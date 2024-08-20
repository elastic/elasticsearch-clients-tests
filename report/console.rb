require 'json'
require 'rake'
require_relative 'reporter'
load 'Rakefile'

def download_artifacts
  Rake::Task['download_all'].invoke
end

@reporter = Elastic::Reporter.new
puts '📜 Data loaded successfully. You can use the data via the `@reporter` object.'
