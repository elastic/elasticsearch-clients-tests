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

require 'pathname'
require 'open-uri'
require 'json'

module Elastic
  CURRENT_PATH = Pathname(File.expand_path(__dir__))
  class << self
    #
    # Defines the version to download. Useful for different branches. It uses the BRANCH env
    # variable, STACK_VERSION env variable or reads the version from the report GitHub Actions yaml
    # file in that order.
    # When using branch, it will get the latest version for that branch from snapshots.elastic.co.
    # This is useful for the Elasticsearch JSON artifacts. For the elasticsearch-specification, we
    # download the branch.
    #
    def version
      if ENV['BRANCH']
        require 'open-uri'
        require 'yaml'

        versions = URI.open("https://snapshots.elastic.co/latest/#{ENV['BRANCH']}.json").read
        YAML.safe_load(versions)['version']
      else
        ENV['STACK_VERSION'] || read_version_from_github
      end
    end

    #
    # If there's no STACK_VERSION or BRANCH specified, this function will read the version to
    # download from the GitHub Actions yaml file which specifies STACK_VERSION.
    #
    def read_version_from_github
      yml = File.read(File.expand_path('../.github/workflows/report.yml', __dir__))
      regexp = /[0-9.]+(-SNAPSHOT)?/
      yml.split("\n").select { |l| l.match?('STACK_VERSION') }.first.strip.match(regexp)[0]
    end

    #
    # Downloads the JSON spec from Elasticsearch.
    #
    def download_json_spec
      json_filename = CURRENT_PATH.join('tmp/artifacts.json')

      # Create ./tmp if it doesn't exist
      Dir.mkdir(CURRENT_PATH.join('tmp'), 0700) unless File.directory?(CURRENT_PATH.join('tmp'))

      # Download json file with package information for version:
      json_url = "https://artifacts-api.elastic.co/v1/versions/#{version}"
      download_file!(json_url, json_filename)
      # Parse the downloaded JSON
      begin
        artifacts = JSON.parse(File.read(json_filename))
      rescue StandardError => e
        STDERR.puts "[!] Couldn't read JSON file #{json_filename}"
        exit 1
      end

      # Either find the artifacts for the exact same build hash from the current running cluster or
      # use the first one from the list of builds:
      build_hash_artifact = artifacts['version']['builds'].first
      zip_url = build_hash_artifact.dig('projects', 'elasticsearch', 'packages').select { |k, _| k =~ /rest-resources-zip/ }.map { |_, v| v['url'] }.first

      # Dig into the elasticsearch packages, search for the rest-resources-zip package and return the URL:
      build_hash_artifact.dig('projects', 'elasticsearch', 'packages').select { |k, _| k =~ /rest-resources-zip/ }.map { |_, v| v['url'] }.first

      # Download the zip file
      filename = CURRENT_PATH.join("tmp/#{zip_url.split('/').last}")
      download_file!(zip_url, filename)

      spec = CURRENT_PATH.join('tmp/rest-api-spec')
      FileUtils.remove_dir(spec) if File.directory?(spec)

      puts "Unzipping file #{filename}"
      `unzip -o #{filename} -d tmp/`
      `rm #{filename}`
      puts "Artifacts downloaded in ./tmp, build hash #{@build_hash}"
      File.write(CURRENT_PATH.join('tmp/rest-api-spec/build_hash'), @build_hash)
    end

    #
    # Downloads the specification from github.com/elastic/elasticsearch-specification
    # If a branch is specified with an env variable, it uses that, downloads `main` otherwise.
    #
    def download_es_specification
      branch = ENV['BRANCH'] || 'main'
      filename = CURRENT_PATH.join('tmp/schema.json')

      url = "https://github.com/elastic/elasticsearch-specification/raw/#{branch}/output/schema/schema.json"
      download_file!(url, filename)
    end

    #
    # Helper function to download files
    #
    def download_file!(url, filename)
      puts "Downloading #{filename} from #{url}"
      File.open(filename, 'w') do |downloaded_file|
        URI.open(url, 'rb') do |artifact_file|
          downloaded_file.write(artifact_file.read)
        end
      end
      puts "Successfully downloaded #{filename}"

      unless File.exist?(filename)
        warn "[!] Couldn't download #{filename}"
        exit 1
      end
    rescue StandardError => e
      abort e.message
    end
  end
end
