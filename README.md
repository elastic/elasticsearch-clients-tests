# Elasticsearch Clients Tests

This repository holds common tests for Elasticsearch Clients. The tests are specified using the Elasticsearch YAML format reported [here](https://github.com/elastic/elasticsearch/blob/main/rest-api-spec/src/yamlRestTest/resources/rest-api-spec/test/README.asciidoc).

All the tests are located in the [tests](tests) folder. Each API endpoint has a folder containing the tests to be executed. All the files must be executed in order, they are enumerated with a digit prefix.

## Test Sections

### `requires`

This section should define if a test is available for the stack client, serverless client or both with the following format:
```yaml
---
requires:
  serverless: true
  stack: true
```

This helps us differentiate tests for a particular client and define tests in common for both.

### `setup` and `teardown`

Pre-requisites to run a test (e.g. creating an index, populating an index with data) are declared in a `setup` section. The list of commands in the `setup` section has to run before the test section.

Cleanup is declared in a `teardown` section. This list of commands will run after the tests. **Please add a `teardown` section to your test to remove any created artifacts and data**. This will keep our test clusters clean and our test suite sane.

## APIs Report

[This report](https://github.com/elastic/elasticsearch-clients-tests/blob/main/apis_report.md) contains information from each specification:
- [Elasticsearch REST API JSON specification](https://github.com/elastic/elasticsearch/tree/main/rest-api-spec)
- [Elasticsearch API Specification](https://github.com/elastic/elasticsearch-specification/)

It also contains information on test coverage in this project for Serverless and Stack APIs. The report is automatically generated when code is pushed in a [GitHub Action](https://github.com/elastic/elasticsearch-clients-tests/blob/main/.github/workflows/report.yml). It can also be triggered manually. The source code for the report is in the [./report/](./report) directory.

You can examine the data with an interactive Ruby console by checking out the code and running:

```bash
$ cd report
$ rake console
irb -r rubygems -I lib -r ./console.rb
⏳ Reading and parsing specifications...
📜 Data loaded successfully. You can use the data via the `@reporter` object.
3.3.4 :001 >
```

Once in the interactive shell you'll have access to the data. You can run `download_artifacts` from the console to get the latest specification files. Take a look at [`Elastic::Reporter`](./report/reporter.rb) to learn about the available functions.

```ruby
3.3.4 :001 > @reporter.endpoints.count
 => 482
3.3.4 :002 > @reporter.endpoints.first
 =>
#<Elastic::ApiEndpoint:0x00007f94abe7a698
 @availability={"serverless"=>{"stability"=>"stable", "visibility"=>"public"}, "stack"=>{"since"=>"7.7.0", "stability"=>"stable"}},
 @available_serverless=true,
 @available_stack=true,
 @name="async_search.delete",
 @test_serverless={:file=>"./tests/async_search/10_basic.yml", :line=>53},
 @test_stack={:file=>"./tests/async_search/10_basic.yml", :line=>53}>
3.3.4 :003 > @reporter.namespaces
 =>
["async_search", "cat", "ccr", "cluster", "connector", "dangling_indices", "enrich", "eql", "esql",
"features", "fleet", "graph", "ilm", "indices", "inference", "ingest", "license", "logstash",
"migration", "ml", "monitoring", "nodes", "query_rules", "search_application",
"searchable_snapshots", "security", "simulate", "slm", "synonyms", "tasks", "text_structure",
"transform", "watcher", "xpack"]
```
