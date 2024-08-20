require_relative 'lib/api_endpoint'

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
    EXCLUDED_APIS = [
      { name: 'autoscaling', reason: 'Designed for indirect use by ECE/ESS and ECK. Direct use is not supported.' },
      { name: 'shutdown', reason: 'Designed for indirect use by ECE/ESS and ECK. Direct use is not supported.' },
      { name: 'rollup', reason: 'The rollup feature was never GA-ed and is still tech preview. It has been deprecated since 8.11.0 in favor of downsampling.' }
    ].freeze

    attr_reader :endpoints, :internal

    def initialize
      @endpoints = []
      @internal = []

      setup
    end

    # Serverless APIs are obtained from elastic/elasticsearch-specification.
    # Use `rake download_serverless` to download the files to ../tmp.
    def setup
      JSON.parse(File.read('./tmp/schema.json'))['endpoints'].map do |spec|
        if spec['name'].start_with?('_')
          @internal << { name: spec['name'], reason: 'Internal API' }
        elsif (skippable = EXCLUDED_APIS.select { |api| spec['name'].match? api[:name] }.first)
          @internal << skippable
        elsif spec.dig('availability', 'stack', 'visibility') == 'private'
          @internal << { name: spec['name'], reason: 'Private API' }
        else
          @endpoints << ApiEndpoint.new(spec)
        end
      end
    end

    def coverage_serverless
      @endpoints.count(&:tested_serverless?) * 100 / @endpoints.count(&:available_serverless?)
    end

    def coverage_stack
      @endpoints.count(&:tested_stack?) * 100 / @endpoints.count(&:available_stack?)
    end

    def untested_stack_count
      @endpoints.count { |api| api.available_stack? && !api.tested_stack? }
    end

    def untested_serverless_count
      @endpoints.count do |api|
        api.available_serverless? && !api.tested_serverless?
      end
    end

    def display_table
      @endpoints.map do |endpoint|
        "| #{endpoint.name} | #{endpoint.available_stack? ? '🟢' : '🔴'} " \
        "| #{endpoint.display_tested_stack} | #{endpoint.available_serverless? ? '🟢' : '🔴'} " \
        "| #{endpoint.display_tested_serverless}"
      end.join("\n")
    end
  end
end
