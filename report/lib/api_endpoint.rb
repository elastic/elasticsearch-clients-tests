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

module Elastic
  class ApiEndpoint
    TESTS_PATH = File.expand_path('../tests/**/*.yml')
    REST_API_TESTS_PATH = File.expand_path('./tmp/rest-api-spec/test/')

    attr_reader :name
    attr_writer :test_elasticsearch

    def initialize(spec)
      @name = spec['name']
      @availability = spec['availability']

      @test_stack = find_tested(:stack) if available_stack?
      @test_serverless = find_tested(:serverless) if available_serverless?
      @test_elasticsearch = false
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

    def tested_elasticsearch?
      @test_elasticsearch
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

    def display_tested_elasticsearch
      if tested_elasticsearch?
        '👍'
      elsif tested_stack? || tested_serverless?
        # If it's not tested on the Elasticsearch Suite, but it is in ours:
        '🙌'
      else
        '👎'
      end
    end

    def namespace
      if name.include?('.')
        name.split('.').first
      else
        'common'
      end
    end

    def stability_stack
      @availability['stack']['stability']
    end

    def stability_serverless
      @availability['serverless']['stability']
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
          next unless line.match?(@name)

          # For tests in the format of `do: {watcher.stop: {}}`, we want what's after `do:`
          line = line.split('do:')[1] if line.match?(/do:/)

          api_mention = line.split(':')[0].strip.gsub('"', '').gsub('{','').gsub('}','')
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

    # Find if the endpoint is being tested in the Elasticsearch YAML test suite
    def self.find_rest_api_test(endpoint)
      !`grep -ir #{endpoint}: #{REST_API_TESTS_PATH}`.empty?
    end
  end
end
