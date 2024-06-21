module Elastic
  class Reporter
    STACK_FILES = "#{File.expand_path('./tmp/rest-api-spec/api')}/*.json".freeze
    TESTS_PATH = File.expand_path('../tests/**/*.yml')

    attr_reader :apis, :tested_stack, :tested_serverless, :untested_stack, :untested_serverless

    def initialize
      @apis = {}
      @apis[:specification] = specification_apis
      @apis[:json] = json_apis
      @tested_stack = []
      @tested_serverless = []
      @untested_stack = []
      @untested_serverless = []
      report!
    end

    # Stack APIs are obtained from the Elasticsearch Rest JSON specification.
    # Use `rake download_stack` to download the spec files to ../tmp.
    #
    def json_apis
      apis = Dir[STACK_FILES].map { |path| path.split('/').last.gsub('.json','') }
      reject_internal(apis)
    end

    # Serverless APIs are obtained from elastic/elasticsearch-specification.
    # Use `rake download_serverless` to download the files to ../tmp.
    def specification_apis
      apis = JSON.parse(File.read('./tmp/schema.json'))['endpoints'].map do |s|
        { 'name' => s['name'], 'availability' => s['availability'] }
      end
      reject_internal(apis)
    end

    def stack_apis
      @apis[:specification].select do |api|
        api.dig('availability').nil? ||
          api.dig('availability', 'stack', 'visibility') != 'private'
      end
    end

    def serverless_apis
      # The absence of an 'availability' field on a property implies that the property is
      # available in all flavors.
      @apis[:specification].select do |api|
        api.dig('availability').nil? ||
          (
            !!api.dig('availability', 'serverless') &&
            api.dig('availability', 'serverless', 'visibility') == 'public'
          )
      end
    end

    def report!
      @apis[:specification].each do |api|
        availability = {
          stack: api['availability'].nil? || !!api.dig('availability', 'stack'),
          serverless: api['availability'].nil? || api.dig('availability', 'serverless', 'visibility') == 'public'
        }
        if (test = find_test(api['name']))
          @tested_stack << test if availability[:stack]
          @tested_serverless << test if availability[:serverless]
        else
          @untested_stack << api['name'] if availability[:stack]
          @untested_serverless << api['name'] if availability[:serverless]
        end
      end
    end

    def coverage_serverless
      @tested_serverless.count * 100 / serverless_apis.count
    end

    def coverage_stack
      @tested_stack.count * 100 / @apis[:json].count
    end

    def display_endpoint(api)
      if (test = find_test(api))
        "- [x] <span title='tested'> [#{api}](#{test[:file]}\#L#{test[:line]})</span>"
      else
        "- [ ] <span title='not tested'> #{api}</span>"
      end
    end

    private

    def find_test(endpoint)
      Dir[TESTS_PATH].map do |path|
        relative_path = path[path.index('/tests')..-1]

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

    def reject_internal(apis)
      apis.reject! do |api|
        if api.is_a?(Hash)
          api.dig('name').start_with?('_')
        elsif api.is_a?(String)
          api.start_with?('_')
        end
      end
    end
  end
end
