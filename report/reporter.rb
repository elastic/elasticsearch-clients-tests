# Licensed to Elasticsearch B.V. under one or more contributor
# license agreements. See the NOTICE file distributed with
# this work for additional information regarding copyright
# ownership. Elasticsearch B.V. licenses this file to you under
# the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

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
    # APIs designed for indirect use by ECE/ESS and ECK, direct use is not supported.'
    EXCLUDED_APIS = [
      { name: 'autoscaling', reason: 'Designed for indirect use by ECE/ESS and ECK. Direct use is not supported.' },
      { name: 'shutdown', reason: 'Designed for indirect use by ECE/ESS and ECK. Direct use is not supported.' },
      { name: 'rollup', reason: 'The rollup feature was never GA-ed and is still tech preview. It has been deprecated since 8.11.0 in favor of downsampling.' }
    ].freeze

    attr_reader :endpoints, :internal, :json_spec

    def initialize
      @endpoints = []
      @internal = []

      puts '⏳ Reading and parsing specifications...'
      build_elasticsearch_specification
      build_json_apis
    end

    # Serverless APIs are obtained from elastic/elasticsearch-specification.
    # Use `rake download_serverless` to download the files to ../tmp.
    #
    def build_elasticsearch_specification
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

    # Stack APIs are obtained from the Elasticsearch Rest JSON specification.
    # Use `rake download_stack` to download the spec files to ../tmp.
    #
    # It is assumed that all the APIs in elasticsearch-specification are already present in the
    # Elasticsearch JSON specification.
    #
    def build_json_apis
      @json_spec = {
        internal: [],
        apis: [],
        exclusive: []
      }
      # Find all the JSON files with API specifications:
      apis = Dir[STACK_FILES].map { |path| path.split('/').last.gsub('.json', '') }
      apis.each do |name|
        # Skip if it's an internal or excluded API:
        if name.start_with?('_') || EXCLUDED_APIS.select { |api| name.match? api[:name] }.any?
          @json_spec[:internal] << name
        elsif (endpoint = @endpoints.find { |e| e.name == name })
          tested = ApiEndpoint::find_rest_api_test(name)
          @json_spec[:apis] << { name: name, tested: tested }
          # If we find this API in the spec, add the metadata to the object in @endpoints
          endpoint.test_elasticsearch = tested
        else
          # If the API is not in elasticsearch-specification, add it to only ES:
          @json_spec[:exclusive] << { name: name, tested: ApiEndpoint::find_rest_api_test(name) }
        end
      end
    end

    def coverage_rest_api
      @json_spec[:apis].count { |a| a[:tested] } * 100 / @json_spec[:apis].count
    end

    # Calculates what percentage of serverless endpoints are being tested
    #
    def coverage_serverless
      @endpoints.count(&:tested_serverless?) * 100 / @endpoints.count(&:available_serverless?)
    end

    # Calculates what percentage of serverless endpoints are being tested
    #
    def coverage_stack
      @endpoints.count(&:tested_stack?) * 100 / @endpoints.count(&:available_stack?)
    end

    # Calculates how many stack endpoints are not being tested
    #
    def untested_stack_count
      @endpoints.count { |api| api.available_stack? && !api.tested_stack? }
    end

    # Calculates how many serverless endpoints are not being tested
    #
    def untested_serverless_count
      @endpoints.count do |api|
        api.available_serverless? && !api.tested_serverless?
      end
    end

    # Helper for the template
    # It displays a Markdown table with the information for each endpoint
    #
    def display_table
      @endpoints.map do |endpoint|
        "| #{endpoint.name} | #{endpoint.available_stack? ? '🟢' : '🔴'} " \
        "| #{endpoint.display_tested_stack} | #{endpoint.display_tested_elasticsearch}" \
        "| #{endpoint.available_serverless? ? '🟢' : '🔴'} " \
        "| #{endpoint.display_tested_serverless}"
      end.join("\n")
    end

    def namespaces_stack
      @namespaces_stack ||= namespaces(:stack)
    end

    def namespaces_serverless
      @namespaces_serverless ||= namespaces(:serverless)
    end

    def namespaces(flavour = nil)
      if flavour
        endpoints.map do |a|
          a.name.split('.').first if a.name.include?('.') && a.send("available_#{flavour}?")
        end.compact.uniq
      else
        endpoints.map do |a|
          a.name.split('.').first if a.name.include?('.')
        end.compact.uniq
      end
    end
  end
end
