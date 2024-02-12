module Elastic
  class Reporter
    JSON_FILES = "#{File.expand_path('./tmp/rest-api-spec/api')}/*.json".freeze
    TESTS_PATH = File.expand_path('../tests/**/*.yml')

    attr_reader :apis, :tested, :untested

    def initialize
      @apis = gather_apis
      @tested = []
      @untested = []
      report!
    end

    def gather_apis
      endpoints = Dir[JSON_FILES].map do |path|
        path.split('/').last.gsub('.json','')
      end.reject { |a| a.split('/').last.gsub('.json','').start_with?('_') }
    end

    def report!
      @apis.each do |api|
        if find_in_tests(api)
          @tested << api
        else
          @untested << api
        end
      end
    end

    def find_in_tests(endpoint)
      Dir[TESTS_PATH].map do |path|
        return true if File.readlines(path).grep(/#{endpoint}/).any?
      end
      false
    end
  end
end
