# Elasticsearch Tests report 9.4

Endpoints that are currently being tested are marked as done and link to the test where they're being used.

* **STACK** - **Total**: 549 | **Tested**: 463 | **Untested**: 86 ![](https://geps.dev/progress/84)


* [Internal APIs](#internal-apis-not-tracked)
* [API information from the Elasticsearch JSON specification](#elasticsearch-json-specification)

## Endpoints in elasticsearch-specification

| Endpoint name | Available in Stack | Tested in Stack | Tested in ES | <span title="Feature flag">🚩</span> |
| :------------ | :----------------: |:----------------: |:----------------: |:----------------: |
| async_search.delete | 🟢 | [✅](./tests/async_search/10_basic.yml#L52)</li></ul> | 👍| 
| async_search.get | 🟢 | [✅](./tests/async_search/10_basic.yml#L42)</li></ul> | 👍| 
| async_search.status | 🟢 | [✅](./tests/async_search/10_basic.yml#L47)</li></ul> | 👍| 
| async_search.submit | 🟢 | [✅](./tests/async_search/10_basic.yml#L34)</li></ul> | 👍| 
| bulk | 🟢 | [✅](./tests/bulk/10_basic.yml#L13)</li></ul> | 👍| 
| cancel_reindex | 🟢 | ❌ | 👎| <span title='Feature flag: reindex_management_api'>🚩</span>
| cat.aliases | 🟢 | [✅](./tests/cat/aliases.yml#L20)</li></ul> | 👍| 
| cat.allocation | 🟢 | [✅](./tests/cat/allocation.yml#L6)</li></ul> | 👍| 
| cat.circuit_breaker | 🟢 | [✅](./tests/cat/circuit_breaker.yml#L8)</li></ul> | 👍| 
| cat.component_templates | 🟢 | [✅](./tests/cat/component_templates.yml#L6)</li></ul> | 👍| 
| cat.count | 🟢 | [✅](./tests/cat/count.yml#L17)</li></ul> | 👍| 
| cat.fielddata | 🟢 | [✅](./tests/cat/fielddata.yml#L6)</li></ul> | 👍| 
| cat.health | 🟢 | [✅](./tests/cat/health.yml#L8)</li></ul> | 👍| 
| cat.help | 🟢 | [✅](./tests/cat/help.yml#L6)</li></ul> | 🙌| 
| cat.indices | 🟢 | [✅](./tests/cat/indices.yml#L17)</li></ul> | 👍| 
| cat.master | 🟢 | [✅](./tests/cat/master.yml#L6)</li></ul> | 🙌| 
| cat.ml_data_frame_analytics | 🟢 | [✅](./tests/cat/ml.yml#L8)</li></ul> | 👍| 
| cat.ml_datafeeds | 🟢 | [✅](./tests/cat/ml.yml#L12)</li></ul> | 👍| 
| cat.ml_jobs | 🟢 | [✅](./tests/cat/ml.yml#L16)</li></ul> | 👍| 
| cat.ml_trained_models | 🟢 | [✅](./tests/cat/ml.yml#L20)</li></ul> | 👍| 
| cat.nodeattrs | 🟢 | [✅](./tests/cat/nodeattrs.yml#L6)</li></ul> | 👍| 
| cat.nodes | 🟢 | [✅](./tests/cat/nodes.yml#L6)</li></ul> | 👍| 
| cat.pending_tasks | 🟢 | [✅](./tests/cat/pending_tasks.yml#L6)</li></ul> | 🙌| 
| cat.plugins | 🟢 | [✅](./tests/cat/plugins.yml#L6)</li></ul> | 👍| 
| cat.recovery | 🟢 | [✅](./tests/cat/recovery.yml#L6)</li></ul> | 👍| 
| cat.repositories | 🟢 | [✅](./tests/cat/repositories.yml#L6)</li></ul> | 👍| 
| cat.segments | 🟢 | [✅](./tests/cat/segments.yml#L6)</li></ul> | 👍| 
| cat.shards | 🟢 | [✅](./tests/cat/shards.yml#L6)</li></ul> | 👍| 
| cat.snapshots | 🟢 | [✅](./tests/cat/snapshots.yml#L6)</li></ul> | 👍| 
| cat.tasks | 🟢 | [✅](./tests/cat/tasks.yml#L6)</li></ul> | 👍| 
| cat.templates | 🟢 | [✅](./tests/cat/templates.yml#L6)</li></ul> | 👍| 
| cat.thread_pool | 🟢 | [✅](./tests/cat/thread_pool.yml#L6)</li></ul> | 👍| 
| cat.transforms | 🟢 | [✅](./tests/cat/transform.yml#L31)</li></ul> | 👍| 
| ccr.delete_auto_follow_pattern | 🟢 | ❌ | 👎| 
| ccr.follow | 🟢 | ❌ | 👎| 
| ccr.follow_info | 🟢 | ❌ | 👎| 
| ccr.follow_stats | 🟢 | ❌ | 👎| 
| ccr.forget_follower | 🟢 | ❌ | 👎| 
| ccr.get_auto_follow_pattern | 🟢 | ❌ | 👎| 
| ccr.pause_auto_follow_pattern | 🟢 | ❌ | 👎| 
| ccr.pause_follow | 🟢 | ❌ | 👎| 
| ccr.put_auto_follow_pattern | 🟢 | ❌ | 👎| 
| ccr.resume_auto_follow_pattern | 🟢 | ❌ | 👎| 
| ccr.resume_follow | 🟢 | ❌ | 👎| 
| ccr.stats | 🟢 | ❌ | 👎| 
| ccr.unfollow | 🟢 | ❌ | 👎| 
| clear_scroll | 🟢 | [✅](./tests/scroll/10_basic.yml#L29)</li></ul> | 👍| 
| close_point_in_time | 🟢 | [✅](./tests/point_in_time/10_basic.yml#L30)</li></ul> | 👍| 
| cluster.allocation_explain | 🟢 | [✅](./tests/cluster/allocation_explain.yml#L18)</li></ul> | 👍| 
| cluster.delete_component_template | 🟢 | [✅](./tests/cluster/component_templates.yml#L28)</li></ul> | 👍| 
| cluster.delete_voting_config_exclusions | 🟢 | [✅](./tests/cluster/voting_config_exclusions.yml#L8)</li></ul> | 👍| 
| cluster.exists_component_template | 🟢 | [✅](./tests/cluster/component_templates.yml#L19)</li></ul> | 🙌| 
| cluster.get_component_template | 🟢 | [✅](./tests/cluster/component_templates.yml#L23)</li></ul> | 👍| 
| cluster.get_settings | 🟢 | [✅](./tests/cluster/get_settings.yml#L8)</li></ul> | 👍| 
| cluster.health | 🟢 | [✅](./tests/cluster/health.yml#L8)</li></ul> | 👍| 
| cluster.info | 🟢 | [✅](./tests/cluster/cluster_info.yml#L8)</li></ul> | 👍| 
| cluster.pending_tasks | 🟢 | [✅](./tests/cluster/pending_tasks.yml#L8)</li></ul> | 👍| 
| cluster.post_voting_config_exclusions | 🟢 | [✅](./tests/cluster/voting_config_exclusions.yml#L12)</li></ul> | 👍| 
| cluster.put_component_template | 🟢 | [✅](./tests/cluster/component_templates.yml#L8)</li></ul> | 👍| 
| cluster.put_settings | 🟢 | [✅](./tests/cluster/put_settings.yml#L8)</li></ul> | 👍| 
| cluster.remote_info | 🟢 | [✅](./tests/cluster/remote_info.yml#L8)</li></ul> | 👍| 
| cluster.reroute | 🟢 | [✅](./tests/cluster/reroute.yml#L8)</li></ul> | 👍| 
| cluster.state | 🟢 | [✅](./tests/cluster/state.yml#L8)</li></ul> | 👍| 
| cluster.stats | 🟢 | [✅](./tests/cluster/stats.yml#L8)</li></ul> | 👍| 
| connector.check_in | 🟢 | [✅](./tests/entsearch/20_connector.yml#L21)</li></ul> | 👍| 
| connector.delete | 🟢 | [✅](./tests/entsearch/20_connector.yml#L40)</li></ul> | 👍| 
| connector.get | 🟢 | [✅](./tests/entsearch/20_connector.yml#L35)</li></ul> | 👍| 
| connector.list | 🟢 | [✅](./tests/entsearch/20_connector.yml#L26)</li></ul> | 👍| 
| connector.post | 🟢 | [✅](./tests/entsearch/20_connector.yml#L30)</li></ul> | 👍| 
| connector.put | 🟢 | [✅](./tests/entsearch/20_connector.yml#L14)</li></ul> | 👍| 
| connector.sync_job_cancel | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L39)</li></ul> | 👍| 
| connector.sync_job_check_in | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L34)</li></ul> | 👍| 
| connector.sync_job_claim | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L65)</li></ul> | 👍| 
| connector.sync_job_delete | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L72)</li></ul> | 👍| 
| connector.sync_job_error | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L86)</li></ul> | 👍| 
| connector.sync_job_get | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L28)</li></ul> | 👍| 
| connector.sync_job_list | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L61)</li></ul> | 👍| 
| connector.sync_job_post | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L19)</li></ul> | 👍| 
| connector.sync_job_update_stats | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L44)</li></ul> | 👍| 
| connector.update_active_filtering | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L63)</li></ul> | 👍| 
| connector.update_api_key_id | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L238)</li></ul> | 👍| 
| connector.update_configuration | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L85)</li></ul> | 👍| 
| connector.update_error | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L78)</li></ul> | 👍| 
| connector.update_features | 🟢 | [✅](./tests/entsearch/60_connector_updates_stack.yml#L24)</li></ul> | 👍| 
| connector.update_filtering | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L31)</li></ul> | 👍| 
| connector.update_filtering_validation | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L53)</li></ul> | 👍| 
| connector.update_index_name | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L135)</li></ul> | 👍| 
| connector.update_name | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L24)</li></ul> | 👍| 
| connector.update_native | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L157)</li></ul> | 👍| 
| connector.update_pipeline | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L169)</li></ul> | 👍| 
| connector.update_scheduling | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L188)</li></ul> | 👍| 
| connector.update_service_type | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L226)</li></ul> | 👍| 
| connector.update_status | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L214)</li></ul> | 👍| 
| count | 🟢 | [✅](./tests/bulk/10_basic.yml#L27)</li></ul> | 👍| 
| create | 🟢 | [✅](./tests/create/10_basic.yml#L18)</li></ul> | 👍| 
| dangling_indices.delete_dangling_index | 🟢 | ❌ | 👎| 
| dangling_indices.import_dangling_index | 🟢 | ❌ | 👎| 
| dangling_indices.list_dangling_indices | 🟢 | [✅](./tests/dangling_indices/10_basic.yml#L9)</li></ul> | 🙌| 
| delete | 🟢 | [✅](./tests/delete/10_basic.yml#L16)</li></ul> | 👍| 
| delete_by_query | 🟢 | [✅](./tests/delete_by_query/10_stack.yml#L33)</li></ul> | 👍| 
| delete_by_query_rethrottle | 🟢 | [✅](./tests/delete_by_query/10_stack.yml#L45)</li></ul> | 🙌| 
| delete_script | 🟢 | [✅](./tests/script/10_basic.yml#L33)</li></ul> | 🙌| 
| enrich.delete_policy | 🟢 | [✅](./tests/enrich/10_basic.yml#L44)</li></ul> | 👍| 
| enrich.execute_policy | 🟢 | [✅](./tests/enrich/10_basic.yml#L34)</li></ul> | 👍| 
| enrich.get_policy | 🟢 | [✅](./tests/enrich/10_basic.yml#L39)</li></ul> | 👍| 
| enrich.put_policy | 🟢 | [✅](./tests/enrich/10_basic.yml#L24)</li></ul> | 👍| 
| enrich.stats | 🟢 | [✅](./tests/enrich/20_stats.yml#L8)</li></ul> | 👍| 
| eql.delete | 🟢 | [✅](./tests/eql/10_basic.yml#L122)</li></ul> | 👍| 
| eql.get | 🟢 | [✅](./tests/eql/10_basic.yml#L114)</li></ul> | 👍| 
| eql.get_status | 🟢 | [✅](./tests/eql/10_basic.yml#L109)</li></ul> | 👍| 
| eql.search | 🟢 | [✅](./tests/eql/10_basic.yml#L99)</li></ul> | 👍| 
| esql.async_query | 🟢 | [✅](./tests/esql/20_async.yml#L40)</li></ul> | 🙌| 
| esql.async_query_delete | 🟢 | [✅](./tests/esql/20_async.yml#L74)</li></ul> | 🙌| 
| esql.async_query_get | 🟢 | [✅](./tests/esql/20_async.yml#L56)</li></ul> | 🙌| 
| esql.async_query_stop | 🟢 | [✅](./tests/esql/20_async.yml#L70)</li></ul> | 🙌| 
| esql.delete_view | 🟢 | [✅](./tests/esql/40_view.yml#L82)</li></ul> | 👍| <span title='Feature flag: esql_views'>🚩</span>
| esql.get_query | 🟢 | [✅](./tests/esql/30_queries.yml#L12)</li></ul> | 👍| 
| esql.get_view | 🟢 | [✅](./tests/esql/40_view.yml#L54)</li></ul> | 👍| <span title='Feature flag: esql_views'>🚩</span>
| esql.list_queries | 🟢 | [✅](./tests/esql/30_queries.yml#L7)</li></ul> | 👍| 
| esql.put_view | 🟢 | [✅](./tests/esql/40_view.yml#L48)</li></ul> | 👍| <span title='Feature flag: esql_views'>🚩</span>
| esql.query | 🟢 | [✅](./tests/esql/10_query.yml#L40)</li></ul> | 👍| 
| exists | 🟢 | [✅](./tests/exists/10_basic.yml#L19)</li></ul> | 👍| 
| exists_source | 🟢 | [✅](./tests/exists_source/10_basic.yml#L19)</li></ul> | 🙌| 
| explain | 🟢 | [✅](./tests/explain/10_basic.yml#L24)</li></ul> | 👍| 
| features.get_features | 🟢 | [✅](./tests/features/10_basic.yml#L8)</li></ul> | 👍| 
| features.reset_features | 🟢 | [✅](./tests/features/10_basic.yml#L12)</li></ul> | 🙌| 
| field_caps | 🟢 | [✅](./tests/field_caps/10_basic.yml#L21)</li></ul> | 👍| 
| fleet.global_checkpoints | 🟢 | ❌ | 👎| 
| fleet.msearch | 🟢 | ❌ | 👎| 
| fleet.search | 🟢 | ❌ | 👎| 
| get | 🟢 | [✅](./tests/get/10_basic.yml#L15)</li></ul> | 👍| 
| get_reindex | 🟢 | ❌ | 👎| <span title='Feature flag: reindex_management_api'>🚩</span>
| get_script | 🟢 | [✅](./tests/script/10_basic.yml#L29)</li></ul> | 🙌| 
| get_script_context | 🟢 | [✅](./tests/script/20_script_context_languages.yml#L8)</li></ul> | 👍| 
| get_script_languages | 🟢 | [✅](./tests/script/20_script_context_languages.yml#L14)</li></ul> | 👍| 
| get_source | 🟢 | [✅](./tests/get_source/10_basic.yml#L20)</li></ul> | 👍| 
| graph.explore | 🟢 | [✅](./tests/graph/explore.yml#L33)</li></ul> | 👍| 
| health_report | 🟢 | [✅](./tests/health_report.yml#L8)</li></ul> | 👍| 
| ilm.delete_lifecycle | 🟢 | [✅](./tests/ilm/10_basic.yml#L87)</li></ul> | 🙌| 
| ilm.explain_lifecycle | 🟢 | [✅](./tests/ilm/10_basic.yml#L65)</li></ul> | 👍| 
| ilm.get_lifecycle | 🟢 | [✅](./tests/ilm/10_basic.yml#L60)</li></ul> | 🙌| 
| ilm.get_status | 🟢 | [✅](./tests/ilm/10_basic.yml#L70)</li></ul> | 🙌| 
| ilm.migrate_to_data_tiers | 🟢 | ❌ | 👎| 
| ilm.move_to_step | 🟢 | ❌ | 👎| 
| ilm.put_lifecycle | 🟢 | [✅](./tests/ilm/10_basic.yml#L31)</li></ul> | 👍| 
| ilm.remove_policy | 🟢 | [✅](./tests/ilm/10_basic.yml#L82)</li></ul> | 👍| 
| ilm.retry | 🟢 | ❌ | 👎| 
| ilm.start | 🟢 | [✅](./tests/ilm/10_basic.yml#L74)</li></ul> | 🙌| 
| ilm.stop | 🟢 | [✅](./tests/ilm/10_basic.yml#L78)</li></ul> | 🙌| 
| index | 🟢 | [✅](./tests/async_search/10_basic.yml#L8)</li></ul> | 👍| 
| indices.add_block | 🟢 | [✅](./tests/indices/block.yml#L16)</li></ul> | 👍| 
| indices.analyze | 🟢 | [✅](./tests/indices/analyze.yml#L19)</li></ul> | 👍| 
| indices.cancel_migrate_reindex | 🟢 | [✅](./tests/migration/20_reindex.yml#L52)</li></ul> | 👍| 
| indices.clear_cache | 🟢 | [✅](./tests/indices/clear_cache.yml#L8)</li></ul> | 👍| 
| indices.clone | 🟢 | [✅](./tests/indices/clone.yml#L53)</li></ul> | 👍| 
| indices.close | 🟢 | [✅](./tests/indices/open_close.yml#L21)</li></ul> | 👍| 
| indices.create | 🟢 | [✅](./tests/cat/aliases.yml#L8)</li></ul> | 👍| 
| indices.create_data_stream | 🟢 | [✅](./tests/ilm/10_basic.yml#L20)</li></ul> | 👍| 
| indices.create_from | 🟢 | [✅](./tests/migration/30_create_from.yml#L31)</li></ul> | 👍| 
| indices.data_streams_stats | 🟢 | [✅](./tests/indices/data_streams_stack.yml#L36)</li></ul> | 👍| 
| indices.delete | 🟢 | [✅](./tests/async_search/10_basic.yml#L29)</li></ul> | 👍| 
| indices.delete_alias | 🟢 | [✅](./tests/indices/alias.yml#L49)</li></ul> | 👍| 
| indices.delete_data_lifecycle | 🟢 | [✅](./tests/indices/20_data_lifecycle.yml#L27)</li></ul> | 👍| 
| indices.delete_data_stream | 🟢 | [✅](./tests/ilm/10_basic.yml#L26)</li></ul> | 👍| 
| indices.delete_data_stream_options | 🟢 | [✅](./tests/indices/data_streams_options.yml#L70)</li></ul> | 👍| 
| indices.delete_index_template | 🟢 | [✅](./tests/indices/data_stream_settings.yml#L11)</li></ul> | 👍| 
| indices.delete_template | 🟢 | [✅](./tests/indices/exists_template.yml#L8)</li></ul> | 👍| 
| indices.disk_usage | 🟢 | [✅](./tests/indices/disk_usage.yml#L47)</li></ul> | 👍| 
| indices.downsample | 🟢 | [✅](./tests/indices/downsample.yml#L63)</li></ul> | 👍| 
| indices.exists | 🟢 | [✅](./tests/indices/exists.yml#L18)</li></ul> | 👍| 
| indices.exists_alias | 🟢 | [✅](./tests/indices/alias.yml#L37)</li></ul> | 👍| 
| indices.exists_index_template | 🟢 | [✅](./tests/indices/index_template.yml#L31)</li></ul> | 🙌| 
| indices.exists_template | 🟢 | [✅](./tests/indices/exists_template.yml#L20)</li></ul> | 👍| 
| indices.explain_data_lifecycle | 🟢 | [✅](./tests/indices/10_data_lifecycle.yml#L27)</li></ul> | 👍| 
| indices.field_usage_stats | 🟢 | [✅](./tests/indices/field_usage.yml#L32)</li></ul> | 👍| 
| indices.flush | 🟢 | [✅](./tests/indices/flush.yml#L22)</li></ul> | 👍| 
| indices.forcemerge | 🟢 | [✅](./tests/indices/forcemerge.yml#L18)</li></ul> | 👍| 
| indices.get | 🟢 | [✅](./tests/indices/get.yml#L17)</li></ul> | 👍| 
| indices.get_alias | 🟢 | [✅](./tests/indices/alias.yml#L31)</li></ul> | 👍| 
| indices.get_data_lifecycle | 🟢 | [✅](./tests/indices/10_data_lifecycle.yml#L22)</li></ul> | 👍| 
| indices.get_data_lifecycle_stats | 🟢 | [✅](./tests/indices/20_data_lifecycle.yml#L23)</li></ul> | 🙌| 
| indices.get_data_stream | 🟢 | [✅](./tests/indices/data_stream_mappings.yml#L41)</li></ul> | 👍| 
| indices.get_data_stream_mappings | 🟢 | [✅](./tests/indices/data_stream_mappings.yml#L35)</li></ul> | 👍| 
| indices.get_data_stream_options | 🟢 | [✅](./tests/indices/data_streams_options.yml#L45)</li></ul> | 👍| 
| indices.get_data_stream_settings | 🟢 | [✅](./tests/indices/data_stream_settings.yml#L37)</li></ul> | 👍| 
| indices.get_field_mapping | 🟢 | [✅](./tests/indices/get_field_mapping.yml#L23)</li></ul> | 👍| 
| indices.get_index_template | 🟢 | [✅](./tests/indices/index_template.yml#L24)</li></ul> | 👍| 
| indices.get_mapping | 🟢 | [✅](./tests/indices/mapping.yml#L32)</li></ul> | 👍| 
| indices.get_migrate_reindex_status | 🟢 | [✅](./tests/migration/20_reindex.yml#L46)</li></ul> | 👍| 
| indices.get_settings | 🟢 | [✅](./tests/indices/settings.yml#L21)</li></ul> | 👍| 
| indices.get_template | 🟢 | [✅](./tests/indices/template.yml#L21)</li></ul> | 👍| 
| indices.migrate_reindex | 🟢 | [✅](./tests/migration/20_reindex.yml#L35)</li></ul> | 👍| 
| indices.migrate_to_data_stream | 🟢 | [✅](./tests/indices/migrate_modify_data_stream.yml#L39)</li></ul> | 👍| 
| indices.modify_data_stream | 🟢 | [✅](./tests/indices/migrate_modify_data_stream.yml#L43)</li></ul> | 👍| 
| indices.open | 🟢 | [✅](./tests/indices/open_close.yml#L29)</li></ul> | 👍| 
| indices.promote_data_stream | 🟢 | ❌ | 👎| 
| indices.put_alias | 🟢 | [✅](./tests/cat/aliases.yml#L11)</li></ul> | 👍| 
| indices.put_data_lifecycle | 🟢 | [✅](./tests/indices/10_data_lifecycle.yml#L16)</li></ul> | 👍| 
| indices.put_data_stream_mappings | 🟢 | [✅](./tests/indices/data_stream_mappings.yml#L47)</li></ul> | 👍| 
| indices.put_data_stream_options | 🟢 | [✅](./tests/indices/data_streams_options.yml#L51)</li></ul> | 👍| 
| indices.put_data_stream_settings | 🟢 | [✅](./tests/indices/data_stream_settings.yml#L51)</li></ul> | 👍| 
| indices.put_index_template | 🟢 | [✅](./tests/ilm/10_basic.yml#L8)</li></ul> | 👍| 
| indices.put_mapping | 🟢 | [✅](./tests/indices/mapping.yml#L18)</li></ul> | 👍| 
| indices.put_settings | 🟢 | [✅](./tests/indices/clone.yml#L42)</li></ul> | 👍| 
| indices.put_template | 🟢 | [✅](./tests/indices/exists_template.yml#L24)</li></ul> | 👍| 
| indices.recovery | 🟢 | [✅](./tests/indices/recovery.yml#L22)</li></ul> | 👍| 
| indices.refresh | 🟢 | [✅](./tests/graph/explore.yml#L24)</li></ul> | 👍| 
| indices.reload_search_analyzers | 🟢 | [✅](./tests/ilm/10_basic.yml#L55)</li></ul> | 👍| 
| indices.remove_block | 🟢 | [✅](./tests/indices/block.yml#L21)</li></ul> | 👍| 
| indices.resolve_cluster | 🟢 | [✅](./tests/indices/resolve_cluster.yml#L31)</li></ul> | 👍| 
| indices.resolve_index | 🟢 | [✅](./tests/indices/resolve.yml#L22)</li></ul> | 👍| 
| indices.rollover | 🟢 | [✅](./tests/indices/data_stream_mappings.yml#L62)</li></ul> | 👍| 
| indices.segments | 🟢 | [✅](./tests/indices/segments.yml#L27)</li></ul> | 👍| 
| indices.shard_stores | 🟢 | [✅](./tests/indices/shard_stores.yml#L27)</li></ul> | 👍| 
| indices.shrink | 🟢 | [✅](./tests/indices/shrink.yml#L40)</li></ul> | 👍| 
| indices.simulate_index_template | 🟢 | [✅](./tests/indices/simulate_index_template.yml#L37)</li></ul> | 👍| 
| indices.simulate_template | 🟢 | [✅](./tests/indices/simulate_template.yml#L38)</li></ul> | 👍| 
| indices.split | 🟢 | [✅](./tests/indices/split.yml#L52)</li></ul> | 👍| 
| indices.stats | 🟢 | [✅](./tests/indices/flush.yml#L25)</li></ul> | 👍| 
| indices.update_aliases | 🟢 | [✅](./tests/indices/alias.yml#L41)</li></ul> | 👍| 
| indices.validate_query | 🟢 | [✅](./tests/validate_query/10_basic.yml#L16)</li></ul> | 👍| 
| inference.chat_completion_unified | 🟢 | ❌ | 👎| 
| inference.completion | 🟢 | ❌ | 👎| 
| inference.delete | 🟢 | [✅](./tests/inference/10_basic.yml#L31)</li></ul> | 👍| 
| inference.embedding | 🟢 | ❌ | 👎| 
| inference.get | 🟢 | [✅](./tests/inference/10_basic.yml#L25)</li></ul> | 👍| 
| inference.inference | 🟢 | ❌ | 👎| 
| inference.put | 🟢 | [✅](./tests/inference/10_basic.yml#L8)</li></ul> | 👍| 
| inference.put_ai21 | 🟢 | ❌ | 👎| 
| inference.put_alibabacloud | 🟢 | ❌ | 👎| 
| inference.put_amazonbedrock | 🟢 | ❌ | 👎| 
| inference.put_amazonsagemaker | 🟢 | ❌ | 👎| 
| inference.put_anthropic | 🟢 | ❌ | 👎| 
| inference.put_azureaistudio | 🟢 | ❌ | 👎| 
| inference.put_azureopenai | 🟢 | ❌ | 👎| 
| inference.put_cohere | 🟢 | ❌ | 👎| 
| inference.put_contextualai | 🟢 | ❌ | 👎| 
| inference.put_custom | 🟢 | ❌ | 👎| 
| inference.put_deepseek | 🟢 | ❌ | 👎| 
| inference.put_elasticsearch | 🟢 | ❌ | 👎| 
| inference.put_elser | 🟢 | ❌ | 👎| 
| inference.put_fireworksai | 🟢 | ❌ | 👎| 
| inference.put_googleaistudio | 🟢 | ❌ | 👎| 
| inference.put_googlevertexai | 🟢 | ❌ | 👎| 
| inference.put_groq | 🟢 | ❌ | 👎| 
| inference.put_hugging_face | 🟢 | ❌ | 👎| 
| inference.put_jinaai | 🟢 | ❌ | 👎| 
| inference.put_llama | 🟢 | ❌ | 👎| 
| inference.put_mistral | 🟢 | ❌ | 👎| 
| inference.put_nvidia | 🟢 | ❌ | 👎| 
| inference.put_openai | 🟢 | ❌ | 👎| 
| inference.put_openshift_ai | 🟢 | ❌ | 👎| 
| inference.put_voyageai | 🟢 | ❌ | 👎| 
| inference.put_watsonx | 🟢 | ❌ | 👎| 
| inference.rerank | 🟢 | ❌ | 👎| 
| inference.sparse_embedding | 🟢 | ❌ | 👎| 
| inference.stream_completion | 🟢 | ❌ | 👎| 
| inference.text_embedding | 🟢 | ❌ | 👎| 
| inference.update | 🟢 | ❌ | 👎| 
| info | 🟢 | [✅](./tests/info_stack.yml#L8)</li></ul> | 👍| 
| ingest.delete_geoip_database | 🟢 | [✅](./tests/ingest/20_geoip.yml#L70)</li></ul> | 👍| 
| ingest.delete_ip_location_database | 🟢 | [✅](./tests/ingest/30_ip_location_database.yml#L69)</li></ul> | 👍| 
| ingest.delete_pipeline | 🟢 | [✅](./tests/ingest/10_basic.yml#L29)</li></ul> | 👍| 
| ingest.geo_ip_stats | 🟢 | [✅](./tests/ingest/20_geoip.yml#L8)</li></ul> | 👍| 
| ingest.get_geoip_database | 🟢 | [✅](./tests/ingest/20_geoip.yml#L52)</li></ul> | 👍| 
| ingest.get_ip_location_database | 🟢 | [✅](./tests/ingest/30_ip_location_database.yml#L55)</li></ul> | 👍| 
| ingest.get_pipeline | 🟢 | [✅](./tests/ingest/10_basic.yml#L16)</li></ul> | 👍| 
| ingest.processor_grok | 🟢 | [✅](./tests/ingest/10_basic.yml#L32)</li></ul> | 🙌| 
| ingest.put_geoip_database | 🟢 | [✅](./tests/ingest/20_geoip.yml#L16)</li></ul> | 👍| 
| ingest.put_ip_location_database | 🟢 | [✅](./tests/ingest/30_ip_location_database.yml#L8)</li></ul> | 👍| 
| ingest.put_pipeline | 🟢 | [✅](./tests/ingest/10_basic.yml#L8)</li></ul> | 👍| 
| ingest.simulate | 🟢 | [✅](./tests/ingest/10_basic.yml#L20)</li></ul> | 👍| 
| license.delete | 🟢 | [✅](./tests/license/10_stack.yml#L28)</li></ul> | 👍| 
| license.get | 🟢 | [✅](./tests/license/10_stack.yml#L23)</li></ul> | 👍| 
| license.get_basic_status | 🟢 | [✅](./tests/license/10_stack.yml#L43)</li></ul> | 👍| 
| license.get_trial_status | 🟢 | [✅](./tests/license/10_stack.yml#L52)</li></ul> | 👍| 
| license.post | 🟢 | [✅](./tests/license/10_stack.yml#L8)</li></ul> | 👍| 
| license.post_start_basic | 🟢 | [✅](./tests/license/10_stack.yml#L47)</li></ul> | 👍| 
| license.post_start_trial | 🟢 | [✅](./tests/license/10_stack.yml#L57)</li></ul> | 👍| 
| list_reindex | 🟢 | ❌ | 👎| <span title='Feature flag: reindex_management_api'>🚩</span>
| logstash.delete_pipeline | 🟢 | [✅](./tests/logstash/10_basic.yml#L29)</li></ul> | 🙌| 
| logstash.get_pipeline | 🟢 | [✅](./tests/logstash/10_basic.yml#L25)</li></ul> | 🙌| 
| logstash.put_pipeline | 🟢 | [✅](./tests/logstash/10_basic.yml#L8)</li></ul> | 🙌| 
| mget | 🟢 | [✅](./tests/mget.yml#L24)</li></ul> | 👍| 
| migration.deprecations | 🟢 | [✅](./tests/migration/10_basic.yml#L13)</li></ul> | 👍| 
| migration.get_feature_upgrade_status | 🟢 | [✅](./tests/migration/10_basic.yml#L8)</li></ul> | 👍| 
| migration.post_feature_upgrade | 🟢 | [✅](./tests/migration/40_post_feature_upgrade.yml#L8)</li></ul> | 👍| 
| ml.clear_trained_model_deployment_cache | 🟢 | [✅](./tests/machine_learning/clear_tm_deployment_cache.yml#L90)</li></ul> | 👍| 
| ml.close_job | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L69)</li></ul> | 👍| 
| ml.delete_calendar | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L8)</li></ul> | 👍| 
| ml.delete_calendar_event | 🟢 | [✅](./tests/machine_learning/calendar_events_crud.yml#L88)</li></ul> | 👍| 
| ml.delete_calendar_job | 🟢 | [✅](./tests/machine_learning/calendar_job.yml#L37)</li></ul> | 👍| 
| ml.delete_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L80)</li></ul> | 👍| 
| ml.delete_datafeed | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L90)</li></ul> | 👍| 
| ml.delete_expired_data | 🟢 | [✅](./tests/machine_learning/delete_expired_data.yml#L53)</li></ul> | 👍| 
| ml.delete_filter | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L37)</li></ul> | 👍| 
| ml.delete_forecast | 🟢 | [✅](./tests/machine_learning/forecast.yml#L32)</li></ul> | 👍| 
| ml.delete_job | 🟢 | [✅](./tests/machine_learning/buckets_stack.yml#L66)</li></ul> | 👍| 
| ml.delete_model_snapshot | 🟢 | [✅](./tests/machine_learning/model_snapshots.yml#L89)</li></ul> | 👍| 
| ml.delete_trained_model | 🟢 | [✅](./tests/machine_learning/10_trained_model.yml#L36)</li></ul> | 👍| 
| ml.delete_trained_model_alias | 🟢 | [✅](./tests/machine_learning/trained_model_aliases.yml#L40)</li></ul> | 👍| 
| ml.estimate_model_memory | 🟢 | [✅](./tests/machine_learning/estimate_model_memory.yml#L8)</li></ul> | 👍| 
| ml.evaluate_data_frame | 🟢 | [✅](./tests/machine_learning/data_frame_evaluate.yml#L185)</li></ul> | 👍| 
| ml.explain_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/explain_data_frame_analytics.yml#L30)</li></ul> | 👍| 
| ml.flush_job | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L64)</li></ul> | 👍| 
| ml.forecast | 🟢 | [✅](./tests/machine_learning/forecast.yml#L29)</li></ul> | 👍| 
| ml.get_buckets | 🟢 | [✅](./tests/machine_learning/buckets_stack.yml#L76)</li></ul> | 👍| 
| ml.get_calendar_events | 🟢 | [✅](./tests/machine_learning/calendar_events_crud.yml#L29)</li></ul> | 👍| 
| ml.get_calendars | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L25)</li></ul> | 👍| 
| ml.get_categories | 🟢 | [✅](./tests/machine_learning/get_categories.yml#L51)</li></ul> | 👍| 
| ml.get_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L37)</li></ul> | 👍| 
| ml.get_data_frame_analytics_stats | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L61)</li></ul> | 👍| 
| ml.get_datafeed_stats | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L53)</li></ul> | 👍| 
| ml.get_datafeeds | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L47)</li></ul> | 👍| 
| ml.get_filters | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L17)</li></ul> | 👍| 
| ml.get_influencers | 🟢 | [✅](./tests/machine_learning/get_influencers.yml#L78)</li></ul> | 👍| 
| ml.get_job_stats | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L21)</li></ul> | 👍| 
| ml.get_jobs | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L15)</li></ul> | 👍| 
| ml.get_memory_stats | 🟢 | [✅](./tests/machine_learning/get_memory_stats.yml#L6)</li></ul> | 👍| 
| ml.get_model_snapshot_upgrade_stats | 🟢 | [✅](./tests/machine_learning/upgrade_job_snapshot.yml#L68)</li></ul> | 👍| 
| ml.get_model_snapshots | 🟢 | [✅](./tests/machine_learning/model_snapshots.yml#L73)</li></ul> | 👍| 
| ml.get_overall_buckets | 🟢 | [✅](./tests/machine_learning/buckets_stack.yml#L71)</li></ul> | 👍| 
| ml.get_records | 🟢 | [✅](./tests/machine_learning/get_records.yml#L58)</li></ul> | 👍| 
| ml.get_trained_models | 🟢 | [✅](./tests/machine_learning/10_trained_model.yml#L31)</li></ul> | 👍| 
| ml.get_trained_models_stats | 🟢 | [✅](./tests/machine_learning/30_trained_model_stack.yml#L47)</li></ul> | 👍| 
| ml.infer_trained_model | 🟢 | [✅](./tests/machine_learning/30_trained_model_stack.yml#L67)</li></ul> | 👍| 
| ml.info | 🟢 | [✅](./tests/machine_learning/10_info.yml#L8)</li></ul> | 👍| 
| ml.open_job | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L46)</li></ul> | 👍| 
| ml.post_calendar_events | 🟢 | [✅](./tests/machine_learning/calendar_events_crud.yml#L17)</li></ul> | 👍| 
| ml.post_data | 🟢 | [✅](./tests/machine_learning/post_data.yml#L36)</li></ul> | 👍| 
| ml.preview_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L65)</li></ul> | 👍| 
| ml.preview_datafeed | 🟢 | [✅](./tests/machine_learning/preview_datafeed.yml#L105)</li></ul> | 👍| 
| ml.put_calendar | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L57)</li></ul> | 👍| 
| ml.put_calendar_job | 🟢 | [✅](./tests/machine_learning/calendar_job.yml#L30)</li></ul> | 👍| 
| ml.put_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L42)</li></ul> | 👍| 
| ml.put_datafeed | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L58)</li></ul> | 👍| 
| ml.put_filter | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L8)</li></ul> | 👍| 
| ml.put_job | 🟢 | [✅](./tests/machine_learning/buckets_stack.yml#L8)</li></ul> | 👍| 
| ml.put_trained_model | 🟢 | [✅](./tests/machine_learning/10_trained_model.yml#L8)</li></ul> | 👍| 
| ml.put_trained_model_alias | 🟢 | [✅](./tests/machine_learning/trained_model_aliases.yml#L35)</li></ul> | 👍| 
| ml.put_trained_model_definition_part | 🟢 | [✅](./tests/machine_learning/30_trained_model_stack.yml#L36)</li></ul> | 👍| 
| ml.put_trained_model_vocabulary | 🟢 | [✅](./tests/machine_learning/30_trained_model_stack.yml#L30)</li></ul> | 👍| 
| ml.reset_job | 🟢 | [✅](./tests/machine_learning/jobs_reset.yml#L29)</li></ul> | 👍| 
| ml.revert_model_snapshot | 🟢 | [✅](./tests/machine_learning/revert_model_snapshot.yml#L32)</li></ul> | 👍| 
| ml.set_upgrade_mode | 🟢 | [✅](./tests/machine_learning/set_upgrade_mode.yml#L72)</li></ul> | 👍| 
| ml.start_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L68)</li></ul> | 👍| 
| ml.start_datafeed | 🟢 | [✅](./tests/machine_learning/set_upgrade_mode.yml#L85)</li></ul> | 👍| 
| ml.start_trained_model_deployment | 🟢 | [✅](./tests/machine_learning/30_trained_model_stack.yml#L52)</li></ul> | 👍| 
| ml.stop_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L71)</li></ul> | 👍| 
| ml.stop_datafeed | 🟢 | [✅](./tests/machine_learning/start_stop_datafeed.yml#L70)</li></ul> | 👍| 
| ml.stop_trained_model_deployment | 🟢 | [✅](./tests/machine_learning/30_trained_model_stack.yml#L77)</li></ul> | 👍| 
| ml.update_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L74)</li></ul> | 👍| 
| ml.update_datafeed | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L72)</li></ul> | 👍| 
| ml.update_filter | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L25)</li></ul> | 👍| 
| ml.update_job | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L75)</li></ul> | 👍| 
| ml.update_model_snapshot | 🟢 | [✅](./tests/machine_learning/update_model_snapshot.yml#L6)</li></ul> | 👍| 
| ml.update_trained_model_deployment | 🟢 | [✅](./tests/machine_learning/30_trained_model_stack.yml#L58)</li></ul> | 👍| 
| ml.upgrade_job_snapshot | 🟢 | [✅](./tests/machine_learning/upgrade_job_snapshot.yml#L61)</li></ul> | 👍| 
| msearch | 🟢 | [✅](./tests/msearch.yml#L26)</li></ul> | 👍| 
| msearch_template | 🟢 | [✅](./tests/msearch_template.yml#L29)</li></ul> | 🙌| 
| mtermvectors | 🟢 | [✅](./tests/mtermvectors/10_basic.yml#L25)</li></ul> | 👍| 
| nodes.clear_repositories_metering_archive | 🟢 | [✅](./tests/nodes/10_basic.yml#L48)</li></ul> | 🙌| 
| nodes.get_repositories_metering_info | 🟢 | [✅](./tests/nodes/10_basic.yml#L42)</li></ul> | 🙌| 
| nodes.hot_threads | 🟢 | [✅](./tests/nodes/10_basic.yml#L23)</li></ul> | 👍| 
| nodes.info | 🟢 | [✅](./tests/entsearch/10_basic.yml#L12)</li></ul> | 👍| 
| nodes.reload_secure_settings | 🟢 | [✅](./tests/nodes/10_basic.yml#L30)</li></ul> | 👍| 
| nodes.stats | 🟢 | [✅](./tests/nodes/10_basic.yml#L13)</li></ul> | 👍| 
| nodes.usage | 🟢 | [✅](./tests/nodes/10_basic.yml#L18)</li></ul> | 🙌| 
| open_point_in_time | 🟢 | [✅](./tests/point_in_time/10_basic.yml#L16)</li></ul> | 👍| 
| ping | 🟢 | [✅](./tests/ping/ping.yml#L8)</li></ul> | 👍| 
| put_script | 🟢 | [✅](./tests/msearch_template.yml#L10)</li></ul> | 👍| 
| query_rules.delete_rule | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L46)</li></ul> | 👍| 
| query_rules.delete_ruleset | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L22)</li></ul> | 👍| 
| query_rules.get_rule | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L40)</li></ul> | 👍| 
| query_rules.get_ruleset | 🟢 | [✅](./tests/query_rules/20_rulesets.yml#L29)</li></ul> | 👍| 
| query_rules.list_rulesets | 🟢 | [✅](./tests/query_rules/20_rulesets.yml#L33)</li></ul> | 👍| 
| query_rules.put_rule | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L27)</li></ul> | 👍| 
| query_rules.put_ruleset | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L8)</li></ul> | 👍| 
| query_rules.test | 🟢 | [✅](./tests/query_rules/30_test.yml#L69)</li></ul> | 👍| 
| rank_eval | 🟢 | [✅](./tests/rank_eval.yml#L20)</li></ul> | 👍| 
| reindex | 🟢 | [✅](./tests/reindex/stack.yml#L23)</li></ul> | 👍| 
| reindex_rethrottle | 🟢 | [✅](./tests/reindex/stack.yml#L33)</li></ul> | 👍| 
| render_search_template | 🟢 | [✅](./tests/search_template/10_basic.yml#L29)</li></ul> | 🙌| 
| scripts_painless_execute | 🟢 | [✅](./tests/script/10_basic.yml#L36)</li></ul> | 👍| 
| scroll | 🟢 | [✅](./tests/reindex/stack.yml#L25)</li></ul> | 👍| 
| search | 🟢 | [✅](./tests/indices/rollover.yml#L64)</li></ul> | 👍| 
| search_application.delete | 🟢 | [✅](./tests/search_application/10_basic.yml#L61)</li></ul> | 👍| 
| search_application.delete_behavioral_analytics | 🟢 | [✅](./tests/search_application/20_behavioral_analytics.yml#L17)</li></ul> | 👍| 
| search_application.get | 🟢 | [✅](./tests/search_application/10_basic.yml#L48)</li></ul> | 👍| 
| search_application.get_behavioral_analytics | 🟢 | [✅](./tests/search_application/20_behavioral_analytics.yml#L13)</li></ul> | 👍| 
| search_application.list | 🟢 | [✅](./tests/search_application/10_basic.yml#L58)</li></ul> | 👍| 
| search_application.post_behavioral_analytics_event | 🟢 | [✅](./tests/search_application/30_behavioral_analytics_event.yml#L18)</li></ul> | 👍| 
| search_application.put | 🟢 | [✅](./tests/search_application/10_basic.yml#L24)</li></ul> | 👍| 
| search_application.put_behavioral_analytics | 🟢 | [✅](./tests/search_application/20_behavioral_analytics.yml#L8)</li></ul> | 👍| 
| search_application.render_query | 🟢 | [✅](./tests/search_application/40_render_query.yml#L77)</li></ul> | 👍| 
| search_application.search | 🟢 | [✅](./tests/search_application/10_basic.yml#L52)</li></ul> | 👍| 
| search_mvt | 🟢 | [✅](./tests/search_mvt/10_basic.yml#L33)</li></ul> | 👍| 
| search_shards | 🟢 | [✅](./tests/search_shards.yml#L18)</li></ul> | 👍| 
| search_template | 🟢 | [✅](./tests/search_template/10_basic.yml#L38)</li></ul> | 🙌| 
| searchable_snapshots.cache_stats | 🟢 | [✅](./tests/searchable_snapshots/10_basic.yml#L74)</li></ul> | 🙌| 
| searchable_snapshots.clear_cache | 🟢 | [✅](./tests/searchable_snapshots/10_basic.yml#L78)</li></ul> | 👍| 
| searchable_snapshots.mount | 🟢 | [✅](./tests/searchable_snapshots/10_basic.yml#L58)</li></ul> | 👍| 
| searchable_snapshots.stats | 🟢 | [✅](./tests/searchable_snapshots/10_basic.yml#L70)</li></ul> | 👍| 
| security.activate_user_profile | 🟢 | [✅](./tests/security/130_user_profile.yml#L26)</li></ul> | 👍| 
| security.authenticate | 🟢 | [✅](./tests/security/20_authenticate.yml#L8)</li></ul> | 👍| 
| security.bulk_delete_role | 🟢 | [✅](./tests/security/40_roles.yml#L91)</li></ul> | 👍| 
| security.bulk_put_role | 🟢 | [✅](./tests/security/40_roles.yml#L64)</li></ul> | 👍| 
| security.bulk_update_api_keys | 🟢 | [✅](./tests/security/60_api_key_update.yml#L94)</li></ul> | 👍| 
| security.change_password | 🟢 | [✅](./tests/security/change_password.yml#L55)</li></ul> | 👍| 
| security.clear_api_key_cache | 🟢 | [✅](./tests/security/70_api_key_more.yml#L69)</li></ul> | 👍| 
| security.clear_cached_privileges | 🟢 | [✅](./tests/security/30_privileges_stack.yml#L159)</li></ul> | 👍| 
| security.clear_cached_realms | 🟢 | ❌ | 👎| 
| security.clear_cached_roles | 🟢 | [✅](./tests/security/40_roles.yml#L97)</li></ul> | 👍| 
| security.clear_cached_service_tokens | 🟢 | [✅](./tests/security/90_service_accounts.yml#L39)</li></ul> | 👍| 
| security.clone_api_key | 🟢 | ❌ | 👎| 
| security.create_api_key | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L8)</li></ul> | 👍| 
| security.create_cross_cluster_api_key | 🟢 | [✅](./tests/security/80_api_key_cross_cluster.yml#L40)</li></ul> | 👍| 
| security.create_service_token | 🟢 | [✅](./tests/security/90_service_accounts.yml#L24)</li></ul> | 👍| 
| security.delegate_pki | 🟢 | ❌ | 👎| 
| security.delete_privileges | 🟢 | [✅](./tests/security/30_privileges_stack.yml#L8)</li></ul> | 👍| 
| security.delete_role | 🟢 | [✅](./tests/security/100_tokens.yml#L28)</li></ul> | 👍| 
| security.delete_role_mapping | 🟢 | [✅](./tests/security/110_role_mapping.yml#L8)</li></ul> | 👍| 
| security.delete_service_token | 🟢 | [✅](./tests/security/90_service_accounts.yml#L8)</li></ul> | 👍| 
| security.delete_user | 🟢 | [✅](./tests/security/100_tokens.yml#L33)</li></ul> | 👍| 
| security.disable_user | 🟢 | [✅](./tests/security/140_user.yml#L36)</li></ul> | 👍| 
| security.disable_user_profile | 🟢 | [✅](./tests/security/130_user_profile.yml#L44)</li></ul> | 👍| 
| security.enable_user | 🟢 | [✅](./tests/security/140_user.yml#L48)</li></ul> | 👍| 
| security.enable_user_profile | 🟢 | [✅](./tests/security/130_user_profile.yml#L54)</li></ul> | 👍| 
| security.enroll_kibana | 🟢 | ❌ | 👎| 
| security.enroll_node | 🟢 | ❌ | 👎| 
| security.get_api_key | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L19)</li></ul> | 👍| 
| security.get_builtin_privileges | 🟢 | [✅](./tests/security/30_privileges_stack.yml#L169)</li></ul> | 👍| 
| security.get_privileges | 🟢 | [✅](./tests/security/30_privileges_stack.yml#L93)</li></ul> | 👍| 
| security.get_role | 🟢 | [✅](./tests/security/40_roles.yml#L47)</li></ul> | 👍| 
| security.get_role_mapping | 🟢 | [✅](./tests/security/110_role_mapping.yml#L29)</li></ul> | 👍| 
| security.get_service_accounts | 🟢 | [✅](./tests/security/90_service_accounts.yml#L16)</li></ul> | 👍| 
| security.get_service_credentials | 🟢 | [✅](./tests/security/90_service_accounts.yml#L33)</li></ul> | 👍| 
| security.get_settings | 🟢 | [✅](./tests/security/120_get_settings.yml#L8)</li></ul> | 👍| 
| security.get_stats | 🟢 | [✅](./tests/security/150_stats.yml#L8)</li></ul> | 👍| 
| security.get_token | 🟢 | [✅](./tests/security/100_tokens.yml#L39)</li></ul> | 👍| 
| security.get_user | 🟢 | [✅](./tests/security/140_user.yml#L25)</li></ul> | 👍| 
| security.get_user_privileges | 🟢 | [✅](./tests/security/30_privileges_stack.yml#L176)</li></ul> | 👍| 
| security.get_user_profile | 🟢 | [✅](./tests/security/130_user_profile.yml#L37)</li></ul> | 👍| 
| security.grant_api_key | 🟢 | [✅](./tests/security/70_api_key_more.yml#L42)</li></ul> | 👍| 
| security.has_privileges | 🟢 | [✅](./tests/security/30_privileges_stack.yml#L181)</li></ul> | 👍| 
| security.has_privileges_user_profile | 🟢 | [✅](./tests/security/130_user_profile.yml#L63)</li></ul> | 👍| 
| security.invalidate_api_key | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L33)</li></ul> | 👍| 
| security.invalidate_token | 🟢 | [✅](./tests/security/100_tokens.yml#L52)</li></ul> | 👍| 
| security.oidc_authenticate | 🟢 | ❌ | 👎| 
| security.oidc_logout | 🟢 | ❌ | 👎| 
| security.oidc_prepare_authentication | 🟢 | ❌ | 👎| 
| security.put_privileges | 🟢 | [✅](./tests/security/30_privileges_stack.yml#L21)</li></ul> | 👍| 
| security.put_role | 🟢 | [✅](./tests/security/100_tokens.yml#L8)</li></ul> | 👍| 
| security.put_role_mapping | 🟢 | [✅](./tests/security/110_role_mapping.yml#L14)</li></ul> | 👍| 
| security.put_user | 🟢 | [✅](./tests/security/100_tokens.yml#L16)</li></ul> | 👍| 
| security.query_api_keys | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L24)</li></ul> | 👍| 
| security.query_role | 🟢 | [✅](./tests/security/40_roles.yml#L55)</li></ul> | 👍| 
| security.query_user | 🟢 | [✅](./tests/security/140_user.yml#L61)</li></ul> | 👍| 
| security.saml_authenticate | 🟢 | ❌ | 👎| 
| security.saml_complete_logout | 🟢 | ❌ | 👎| 
| security.saml_invalidate | 🟢 | ❌ | 👎| 
| security.saml_logout | 🟢 | ❌ | 👎| 
| security.saml_prepare_authentication | 🟢 | ❌ | 👎| 
| security.saml_service_provider_metadata | 🟢 | ❌ | 👎| 
| security.suggest_user_profiles | 🟢 | [✅](./tests/security/130_user_profile.yml#L76)</li></ul> | 👍| 
| security.update_api_key | 🟢 | [✅](./tests/security/60_api_key_update.yml#L67)</li></ul> | 👍| 
| security.update_cross_cluster_api_key | 🟢 | [✅](./tests/security/80_api_key_cross_cluster.yml#L72)</li></ul> | 👍| 
| security.update_settings | 🟢 | [✅](./tests/security/120_get_settings.yml#L13)</li></ul> | 👍| 
| security.update_user_profile_data | 🟢 | [✅](./tests/security/130_user_profile.yml#L91)</li></ul> | 👍| 
| simulate.ingest | 🟢 | [✅](./tests/simulate/ingest.yml#L6)</li></ul> | 👍| 
| slm.delete_lifecycle | 🟢 | ❌ | 👎| 
| slm.execute_lifecycle | 🟢 | ❌ | 👎| 
| slm.execute_retention | 🟢 | ❌ | 👎| 
| slm.get_lifecycle | 🟢 | ❌ | 👎| 
| slm.get_stats | 🟢 | ❌ | 👎| 
| slm.get_status | 🟢 | ❌ | 👎| 
| slm.put_lifecycle | 🟢 | ❌ | 👎| 
| slm.start | 🟢 | ❌ | 👎| 
| slm.stop | 🟢 | ❌ | 👎| 
| snapshot.cleanup_repository | 🟢 | [✅](./tests/snapshot/10_basic.yml#L40)</li></ul> | 👍| 
| snapshot.clone | 🟢 | [✅](./tests/snapshot/10_basic.yml#L79)</li></ul> | 👍| 
| snapshot.create | 🟢 | [✅](./tests/searchable_snapshots/10_basic.yml#L37)</li></ul> | 👍| 
| snapshot.create_repository | 🟢 | [✅](./tests/searchable_snapshots/10_basic.yml#L30)</li></ul> | 👍| 
| snapshot.delete | 🟢 | [✅](./tests/searchable_snapshots/10_basic.yml#L47)</li></ul> | 👍| 
| snapshot.delete_repository | 🟢 | [✅](./tests/snapshot/10_basic.yml#L114)</li></ul> | 👍| 
| snapshot.get | 🟢 | [✅](./tests/snapshot/10_basic.yml#L46)</li></ul> | 👍| 
| snapshot.get_repository | 🟢 | [✅](./tests/snapshot/10_basic.yml#L100)</li></ul> | 👍| 
| snapshot.repository_analyze | 🟢 | [✅](./tests/snapshot/10_basic.yml#L104)</li></ul> | 🙌| 
| snapshot.repository_verify_integrity | 🟢 | ❌ | 👎| 
| snapshot.restore | 🟢 | [✅](./tests/snapshot/10_basic.yml#L65)</li></ul> | 👍| 
| snapshot.status | 🟢 | [✅](./tests/snapshot/10_basic.yml#L53)</li></ul> | 👍| 
| snapshot.verify_repository | 🟢 | [✅](./tests/snapshot/10_basic.yml#L109)</li></ul> | 👍| 
| sql.clear_cursor | 🟢 | [✅](./tests/sql/10_basic.yml#L37)</li></ul> | 👍| 
| sql.delete_async | 🟢 | [✅](./tests/sql/10_basic.yml#L59)</li></ul> | 🙌| 
| sql.get_async | 🟢 | [✅](./tests/sql/10_basic.yml#L56)</li></ul> | 🙌| 
| sql.get_async_status | 🟢 | [✅](./tests/sql/10_basic.yml#L52)</li></ul> | 🙌| 
| sql.query | 🟢 | [✅](./tests/sql/10_basic.yml#L26)</li></ul> | 👍| 
| sql.translate | 🟢 | [✅](./tests/sql/10_basic.yml#L33)</li></ul> | 👍| 
| ssl.certificates | 🟢 | [✅](./tests/ssl.yml#L8)</li></ul> | 👍| 
| streams.logs_disable | 🟢 | [✅](./tests/streams/10_basic.yml#L17)</li></ul> | 👍| 
| streams.logs_enable | 🟢 | [✅](./tests/streams/10_basic.yml#L8)</li></ul> | 👍| 
| streams.status | 🟢 | [✅](./tests/streams/10_basic.yml#L13)</li></ul> | 👍| 
| synonyms.delete_synonym | 🟢 | [✅](./tests/synonyms/10_basic.yml#L44)</li></ul> | 👍| 
| synonyms.delete_synonym_rule | 🟢 | [✅](./tests/synonyms/10_basic.yml#L39)</li></ul> | 👍| 
| synonyms.get_synonym | 🟢 | [✅](./tests/synonyms/10_basic.yml#L21)</li></ul> | 👍| 
| synonyms.get_synonym_rule | 🟢 | [✅](./tests/synonyms/10_basic.yml#L31)</li></ul> | 👍| 
| synonyms.get_synonyms_sets | 🟢 | [✅](./tests/synonyms/10_basic.yml#L36)</li></ul> | 👍| 
| synonyms.put_synonym | 🟢 | [✅](./tests/synonyms/10_basic.yml#L16)</li></ul> | 👍| 
| synonyms.put_synonym_rule | 🟢 | [✅](./tests/synonyms/10_basic.yml#L25)</li></ul> | 👍| 
| tasks.cancel | 🟢 | [✅](./tests/tasks.yml#L38)</li></ul> | 👍| 
| tasks.get | 🟢 | [✅](./tests/tasks.yml#L26)</li></ul> | 👍| 
| tasks.list | 🟢 | [✅](./tests/machine_learning/set_upgrade_mode.yml#L124)</li></ul> | 👍| 
| terms_enum | 🟢 | [✅](./tests/terms_enum/10_basic.yml#L21)</li></ul> | 👍| 
| termvectors | 🟢 | [✅](./tests/termvectors/10_basic.yml#L24)</li></ul> | 👍| 
| text_structure.find_field_structure | 🟢 | [✅](./tests/text_structure/10_basic.yml#L36)</li></ul> | 👍| 
| text_structure.find_message_structure | 🟢 | [✅](./tests/text_structure/10_basic.yml#L46)</li></ul> | 👍| 
| text_structure.find_structure | 🟢 | [✅](./tests/text_structure/10_basic.yml#L60)</li></ul> | 👍| 
| text_structure.test_grok_pattern | 🟢 | [✅](./tests/text_structure/10_basic.yml#L82)</li></ul> | 👍| 
| transform.delete_transform | 🟢 | [✅](./tests/cat/transform.yml#L28)</li></ul> | 👍| 
| transform.get_node_stats | 🟢 | [✅](./tests/transform/30_node_stats.yml#L8)</li></ul> | 🙌| 
| transform.get_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L40)</li></ul> | 👍| 
| transform.get_transform_stats | 🟢 | [✅](./tests/transform/10_basic.yml#L43)</li></ul> | 👍| 
| transform.preview_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L46)</li></ul> | 👍| 
| transform.put_transform | 🟢 | [✅](./tests/cat/transform.yml#L12)</li></ul> | 👍| 
| transform.reset_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L58)</li></ul> | 👍| 
| transform.schedule_now_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L52)</li></ul> | 👍| 
| transform.set_upgrade_mode | 🟢 | ❌ | 👎| 
| transform.start_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L49)</li></ul> | 👍| 
| transform.stop_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L55)</li></ul> | 👍| 
| transform.update_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L35)</li></ul> | 👍| 
| transform.upgrade_transforms | 🟢 | [✅](./tests/transform/20_upgrade.yml#L52)</li></ul> | 👍| 
| update | 🟢 | [✅](./tests/update/10_partial_update.yml#L18)</li></ul> | 👍| 
| update_by_query | 🟢 | [✅](./tests/tasks.yml#L19)</li></ul> | 👍| 
| update_by_query_rethrottle | 🟢 | ❌ | 👎| 
| watcher.ack_watch | 🟢 | [✅](./tests/watcher/10_basic.yml#L73)</li></ul> | 👍| 
| watcher.activate_watch | 🟢 | [✅](./tests/watcher/10_basic.yml#L98)</li></ul> | 👍| 
| watcher.deactivate_watch | 🟢 | [✅](./tests/watcher/10_basic.yml#L85)</li></ul> | 👍| 
| watcher.delete_watch | 🟢 | [✅](./tests/watcher/10_basic.yml#L137)</li></ul> | 👍| 
| watcher.execute_watch | 🟢 | [✅](./tests/watcher/10_basic.yml#L49)</li></ul> | 👍| 
| watcher.get_settings | 🟢 | [✅](./tests/watcher/10_basic.yml#L104)</li></ul> | 👍| 
| watcher.get_watch | 🟢 | [✅](./tests/watcher/10_basic.yml#L78)</li></ul> | 👍| 
| watcher.put_watch | 🟢 | [✅](./tests/watcher/10_basic.yml#L16)</li></ul> | 👍| 
| watcher.query_watches | 🟢 | [✅](./tests/watcher/10_basic.yml#L44)</li></ul> | 👍| 
| watcher.start | 🟢 | [✅](./tests/watcher/10_basic.yml#L115)</li></ul> | 👍| 
| watcher.stats | 🟢 | [✅](./tests/watcher/10_basic.yml#L11)</li></ul> | 👍| 
| watcher.stop | 🟢 | [✅](./tests/watcher/10_basic.yml#L112)</li></ul> | 👍| 
| watcher.update_settings | 🟢 | [✅](./tests/watcher/10_basic.yml#L119)</li></ul> | 👍| 
| xpack.info | 🟢 | [✅](./tests/xpack_info.yml#L8)</li></ul> | 👍| 
| xpack.usage | 🟢 | [✅](./tests/entsearch/10_basic.yml#L16)</li></ul> | 👍| 
## Internal APIs (Not tracked)

| Endpoint name | Reason |
| ------------- | ------ |
  | _internal.delete_desired_balance | Internal API |
  | _internal.delete_desired_nodes | Internal API |
  | _internal.get_desired_balance | Internal API |
  | _internal.get_desired_nodes | Internal API |
  | _internal.prevalidate_node_removal | Internal API |
  | _internal.update_desired_nodes | Internal API |
  | autoscaling | Designed for indirect use by ECE/ESS and ECK. Direct use is not supported. |
  | autoscaling | Designed for indirect use by ECE/ESS and ECK. Direct use is not supported. |
  | autoscaling | Designed for indirect use by ECE/ESS and ECK. Direct use is not supported. |
  | autoscaling | Designed for indirect use by ECE/ESS and ECK. Direct use is not supported. |
  | capabilities | Private API |
  | connector.last_sync | Private API |
  | connector.secret_delete | Private API |
  | connector.secret_get | Private API |
  | connector.secret_post | Private API |
  | connector.secret_put | Private API |
  | fleet.delete_secret | Private API |
  | fleet.get_secret | Private API |
  | fleet.post_secret | Private API |
  | knn_search | It was only ever experimental and was deprecated in v`8.4`. It isn't supported in 9.0, and only works when the header `compatible-with=8` is set. |
  | ml.validate | Private API |
  | ml.validate_detector | Private API |
  | monitoring.bulk | Private API |
  | profiling.flamegraph | Private API |
  | profiling.stacktraces | Private API |
  | profiling.status | Private API |
  | profiling.topn_functions | Private API |
  | rollup | The rollup feature was never GA-ed and is still tech preview. It has been deprecated since 8.11.0 in favor of downsampling. |
  | rollup | The rollup feature was never GA-ed and is still tech preview. It has been deprecated since 8.11.0 in favor of downsampling. |
  | rollup | The rollup feature was never GA-ed and is still tech preview. It has been deprecated since 8.11.0 in favor of downsampling. |
  | rollup | The rollup feature was never GA-ed and is still tech preview. It has been deprecated since 8.11.0 in favor of downsampling. |
  | rollup | The rollup feature was never GA-ed and is still tech preview. It has been deprecated since 8.11.0 in favor of downsampling. |
  | rollup | The rollup feature was never GA-ed and is still tech preview. It has been deprecated since 8.11.0 in favor of downsampling. |
  | rollup | The rollup feature was never GA-ed and is still tech preview. It has been deprecated since 8.11.0 in favor of downsampling. |
  | rollup | The rollup feature was never GA-ed and is still tech preview. It has been deprecated since 8.11.0 in favor of downsampling. |
  | shutdown | Designed for indirect use by ECE/ESS and ECK. Direct use is not supported. |
  | shutdown | Designed for indirect use by ECE/ESS and ECK. Direct use is not supported. |
  | shutdown | Designed for indirect use by ECE/ESS and ECK. Direct use is not supported. |

## Elasticsearch JSON specification

**Total** 552 | **Tested** 426 | **Untested** 126 ![](https://geps.dev/progress/77)

<details>
  <summary id="apis-in-json-spec-and-not-elasticsearch-specification">APIs in JSON spec and not elasticsearch-specification (excluding internal APIs)</summary>
      There are currently no APIs in the JSON specification that are not present in the elasticsearch-specification.
  
</details>
