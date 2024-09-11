# Test report

This is a Ruby script that generates the [`../apis_report.md`](../apis_report.md) file.

## Usage:

### Download artifacts

Download the necessary files with `rake download_all`. This will download and unzip the Elasticsearch JSON API spec and the [elasticsearch-specification](https://github.com/elastic/elasticsearch-specification/) spec. The files will be downloaded to `./tmp/rest-api-spec` and `./tmp/schema.json` respectively. The `tmp` directory is added to `.gitignore`.

### Generate report

Run `rake report` to check the available endpoints and which ones have been tested. At the time of writing this, the script checks the `../tests` folder for ocurrences of each endpoint name. The script will generate a Markdown file in `../apis_report.md`.

There are three main files: `reporter.rb`, `Rakefile` and `template.erb`. The first one has the code for the `Elastic::Reporter` class. When it is initialized, it gathers all the API names from the spec (excluding names starting with `_` like `_common` and `_internal`). Then it checks for each API endpoint name, if it's being used in any of the yml files in `./tests`. The reporter is initialized in the `report` task in the Rakefile and the result is passed to the ERB template to generate the markdown file and write it to `./apis_report.md`.

### Interactive Console

Run `rake console` to open an interactive Ruby shell to access and query the data via the `@reporter` object.
