require 'pathname'
require 'open-uri'
require 'json'

module Elastic
  CURRENT_PATH = Pathname(File.expand_path(__dir__))
  class << self
    def download_json_spec(version)
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

    def download_es_specification(branch = 'main')
      filename = CURRENT_PATH.join('tmp/schema.json')
      url = "https://github.com/elastic/elasticsearch-specification/raw/#{branch}/output/schema/schema.json"
      download_file!(url, filename)
    end

    def download_file!(url, filename)
      puts "Downloading #{filename} from #{url}"
      File.open(filename, "w") do |downloaded_file|
        URI.open(url, "rb") do |artifact_file|
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
