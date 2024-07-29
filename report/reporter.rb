module Elastic
  # Generates API report.
  #
  # Usage:
  # @reporter = Elastic::Reporter.new
  # template = ERB.new(File.read('./template.erb'), trim_mode: '-')
  # File.write('../apis_report.md', template.result(binding))
  #
  class Reporter
    STACK_FILES = "#{File.expand_path('./tmp/rest-api-spec/api')}/*.json".freeze
    TESTS_PATH = File.expand_path('../tests/**/*.yml')
    # APIs designed for indirect use by ECE/ESS and ECK, direct use is not supported.'
    EXCLUDED_APIS = ['autoscaling', 'shutdown']

    attr_reader :apis, :stack_tested_count, :serverless_tested_count, :stack_untested_count, :serverless_untested_count

    def initialize
      @apis = {}
      @apis[:internal] = Set[]
      @apis[:specification] = []
      @apis[:json] = []
      @stack_tested_count = 0
      @stack_untested_count = 0
      @serverless_tested_count = 0
      @serverless_untested_count = 0
      report!
    end

    # Stack APIs are obtained from the Elasticsearch Rest JSON specification.
    # Use `rake download_stack` to download the spec files to ../tmp.
    #
    def build_json_apis!
      @apis[:json] = []
      apis = Dir[STACK_FILES].map { |path| path.split('/').last.gsub('.json', '') }
      apis.each do |name|
        if name.start_with?('_') || skippable?(name)
          @apis[:internal] << name
        else
          @apis[:json] << name
        end
      end
    end

    # Serverless APIs are obtained from elastic/elasticsearch-specification.
    # Use `rake download_serverless` to download the files to ../tmp.
    def build_specification_apis!
      @apis[:specification] = []
      JSON.parse(File.read('./tmp/schema.json'))['endpoints'].map do |spec|
        if spec['name'].start_with?('_') || skippable?(spec['name']) ||
           spec.dig('availability', 'stack', 'visibility') == 'private'
          @apis[:internal] << spec['name']
        else
          @apis[:specification] << { 'name' => spec['name'], 'availability' => spec['availability'] }
        end
      end
    end

    def stack_apis
      @apis[:specification].select do |api|
        api['availability'].nil? ||
          api.dig('availability', 'stack', 'visibility') != 'private'
      end
    end

    def serverless_apis
      # The absence of an 'availability' field on a property implies that the property is
      # available in all flavors.
      @apis[:specification].select do |api|
        api['availability'].nil? ||
          (
            api.dig('availability', 'serverless') &&
            api.dig('availability', 'serverless', 'visibility') == 'public'
          )
      end
    end

    def report!
      build_specification_apis!
      build_json_apis!
      calculate_tested_untested!
    end

    def calculate_tested_untested!
      serverless_apis.each do |api|
        if find_test(api['name'], :serverless)
          @serverless_tested_count += 1
        else
          @serverless_untested_count += 1
        end
      end

      stack_apis.each do |api|
        if find_test(api['name'], :stack)
          @stack_tested_count += 1
        else
          @stack_untested_count += 1
        end
      end
    end

    def coverage_serverless
      @serverless_tested_count * 100 / serverless_apis.count
    end

    def coverage_stack
      @stack_tested_count * 100 / @apis[:json].count
    end

    def display_table
      @apis[:specification].map do |api|
        name = api['name']
        tested_stack = if (test = find_test(name, :stack))
                         "[✅](#{test[:file]}\#L#{test[:line]})</li></ul>"
                       elsif stack_apis.include?(api)
                         '❌'
                       else
                         'Not Applicable'
                       end
        tested_serverless = if (test = find_test(name, :serverless))
                              "[✅](#{test[:file]}\#L#{test[:line]})</li></ul>"
                            elsif serverless_apis.include?(api)
                              '❌'
                            else
                              'Not Applicable'
                            end
        "| #{name} | #{stack_apis.include?(api) ? '🟢' : '🔴'} " \
        "| #{tested_stack} | #{serverless_apis.include?(api) ? '🟢' : '🔴'} | #{tested_serverless} |"
      end.join("\n")
    end

    private

    def find_test(endpoint, flavour = nil)
      Dir[TESTS_PATH].map do |path|
        relative_path = path[path.index('/tests')..]
        next unless File.read(path).include?("#{flavour}: true")

        File.readlines(path).each_with_index do |line, index|
          api_mention = line.split(':')[0].strip.gsub('"', '')
          next unless api_mention == endpoint
          next unless Regexp.new(/^#{api_mention}/) =~ endpoint

          requires = find_requires(path)
          return {
            endpoint: endpoint,
            file: ".#{relative_path}",
            line: index + 1,
            serverless: requires['serverless'],
            stack: requires['stack']
          }
        end
      end
      false
    end

    def find_requires(path)
      require 'yaml'
      YAML.load_stream(File.read(path)).select { |a| a.keys.first == 'requires' }.first['requires']
    end

    # If the name is in the namespaces for indirect use APIs, they can be skipped in the report.
    def skippable?(name)
      EXCLUDED_APIS.each do |namespace|
        return true if name.match?(namespace)
      end
      false
    end
  end
end
