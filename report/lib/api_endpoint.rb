module Elastic
  class ApiEndpoint
    TESTS_PATH = File.expand_path('../tests/**/*.yml')

    attr_reader :name, :available_stack, :available_serverless

    def initialize(spec)
      @name = spec['name']
      @availability = spec['availability']

      @test_stack = find_tested(:stack) if available_stack?
      @test_serverless = find_tested(:serverless) if available_serverless?
    end

    # The absence of an 'availability' field on a property implies that the property is
    # available in all flavors.
    def available_stack?
      @available_stack ||= @availability.nil? || @availability.dig('stack', 'visibility') != 'private'
    end

    def available_serverless?
      @available_serverless ||= @availability.nil? || (
        @availability['serverless'] &&
        @availability.dig('serverless', 'visibility') == 'public'
      )
    end

    def tested_stack?
      !@test_stack.nil? && !@test_stack.empty?
    end

    def tested_serverless?
      !@test_serverless.nil? && !@test_serverless.empty?
    end

    def display_tested_stack
      if @test_stack && @test_stack[:file]
        "[✅](#{@test_stack[:file]}\#L#{@test_stack[:line]})</li></ul>"
      elsif available_stack?
        '❌'
      else
        'Not Applicable'
      end
    end

    def display_tested_serverless
      if @test_serverless && @test_serverless[:file]
        "[✅](#{@test_serverless[:file]}\#L#{@test_serverless[:line]})</li></ul>"
      elsif available_serverless?
        '❌'
      else
        'Not Applicable'
      end
    end

    private

    # For a given flavour (:stack or :serverless), find if there are any tests that call this endpoint.
    #
    def find_tested(flavour)
      Dir[TESTS_PATH].map do |path|
        relative_path = path[path.index('/tests')..]
        file_content = File.read(path)
        # Move along if these aren't the tests we're looking for
        next unless file_content.include?("#{flavour}: true") && file_content.include?(@name)

        file_content.split("\n").each_with_index do |line, index|
          next if line.empty?

          api_mention = line.split(':')[0].strip.gsub('"', '')
          next unless api_mention == @name
          next unless Regexp.new(/^#{api_mention}/) =~ @name

          return {
            file: ".#{relative_path}",
            line: index + 1
          }
        end
      end
      {}
    end
  end
end
