# Test report

This is a Ruby script that generates the [`../apis_report.md`](../apis_report.md) file. It runs automatically on pull requests and is set on a weekly schedule to keep the report up to date.

## Usage:

```
$ BRANCH=main rake download_all
$ rake report # generate report
$ rake console # Run an interactive console to qurey the specification data
```

## Detailed instructions:

### Download artifacts

Download the necessary files with `rake download_all`. This will download and unzip the Elasticsearch JSON API spec and the [elasticsearch-specification](https://github.com/elastic/elasticsearch-specification/) spec. The files will be downloaded to `./tmp/rest-api-spec` and `./tmp/schema.json` respectively. The `tmp` directory is added to `.gitignore`.

When downloading the artifacts, the report will check the `BRANCH` environment variable and attempt to download the required artifacts from `https://snapshots.elastic.co/latest/#{branch}.json`. If a branch is not provided, it will read the `STACK_VERSION` value from the `report.yml` GitHub Actions workflow. If you're working on `main`, you need to specify `BRANCH=main` when running the rake tasks, and the report will get the latest snapshot from `master` on the Releases API.

### Generate report

Run `rake report` to check the available endpoints and which ones have been tested. At the time of writing this, the script checks the `../tests` folder for ocurrences of each endpoint name. The script will generate a Markdown file in `../apis_report.md`.

There are three main files: `reporter.rb`, `Rakefile` and `template.erb`. The first one has the code for the `Elastic::Reporter` class. When it is initialized, it gathers all the API names from the spec (excluding names starting with `_` like `_common` and `_internal`). Then it checks for each API endpoint name, if it's being used in any of the yml files in `./tests`. The reporter is initialized in the `report` task in the Rakefile and the result is passed to the ERB template to generate the markdown file and write it to `./apis_report.md`.

### Interactive Console

Run `rake console` to open an interactive Ruby shell to access and query the data via the `@reporter` object. You can  check information about the endpoints with `@reporter.endpoints`:

```ruby
irb(main)> @reporter.endpoints.first
=>
#<Elastic::ApiEndpoint:0x00007252b7af9070
 @availability=
  {"serverless" => {"stability" => "stable", "visibility" => "public"}, "stack" => {"since" => "7.7.0", "stability" => "stable"}},
 @available_serverless=true,
 @available_stack=true,
 @name="async_search.delete",
 @test_elasticsearch=true,
 @test_serverless={file: "./tests/async_search/10_basic.yml", line: 52},
 @test_stack={file: "./tests/async_search/10_basic.yml", line: 52}>
```
