# Elasticsearch Clients Tests

This repository holds common tests for Elasticsearch Clients.

## Yaml tests

The tests are specified using the Elasticsearch YAML format reported [here](https://github.com/elastic/elasticsearch/blob/main/rest-api-spec/src/yamlRestTest/resources/rest-api-spec/test/README.asciidoc).

All the tests for serverless are located in the [tests](tests) folder. Each API endpoint has a folder
containing the tests to be executed. All the files must be executed in order, they are enumerated with
a digit prefix.

### `setup` and `teardown`

Pre-requisites to run a test (e.g. creating an index, populating an index with data) are declared in a `setup` section. The list of commands in the `setup` section has to run before the test section.

Cleanup is declared in a `teardown` section. This list of commands will run after the tests. **Please add a `teardown` section to your test to remove any created artifacts and data**. This will keep our test clusters clean and our test suite sane.
