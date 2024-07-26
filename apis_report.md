# Elasticsearch Tests report

Endpoints that are currently being tested are marked as done and link to the test where they're being used.

* **STACK** - **Total**: 491 | **Tested**: 307 | **Untested**: 184 ![](https://geps.dev/progress/60)
* **SERVERLESS** - **Total**: 236 | **Tested** 229 | **Untested**: 7 ![](https://geps.dev/progress/97)
* [APIs in JSON spec and not in elasticsearch-specification](#apis-in-json-spec-and-not-elasticsearch-specification)

## Endpoints in elasticsearch-specification

| Endpoint name | Available in Stack | Tested in Stack | Available in Serverless | Tested in Serverless |
| :------------ | :----------------: | :-------------: | :---------------------: | :------------------: |
| async_search.delete | 🟢 | [✅](./tests/async_search/10_basic.yml#L53)</li></ul> | 🟢 | [✅](./tests/async_search/10_basic.yml#L53)</li></ul> |
| async_search.get | 🟢 | [✅](./tests/async_search/10_basic.yml#L43)</li></ul> | 🟢 | [✅](./tests/async_search/10_basic.yml#L43)</li></ul> |
| async_search.status | 🟢 | [✅](./tests/async_search/10_basic.yml#L48)</li></ul> | 🟢 | [✅](./tests/async_search/10_basic.yml#L48)</li></ul> |
| async_search.submit | 🟢 | [✅](./tests/async_search/10_basic.yml#L35)</li></ul> | 🟢 | [✅](./tests/async_search/10_basic.yml#L35)</li></ul> |
| bulk | 🟢 | [✅](./tests/bulk/10_basic.yml#L9)</li></ul> | 🟢 | [✅](./tests/bulk/10_basic.yml#L9)</li></ul> |
| cat.aliases | 🟢 | [✅](./tests/cat/aliases.yml#L20)</li></ul> | 🟢 | [✅](./tests/cat/aliases.yml#L20)</li></ul> |
| cat.allocation | 🟢 | [✅](./tests/cat/allocation.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.component_templates | 🟢 | [✅](./tests/cat/component_templates.yml#L6)</li></ul> | 🟢 | [✅](./tests/cat/component_templates.yml#L6)</li></ul> |
| cat.count | 🟢 | [✅](./tests/cat/count.yml#L17)</li></ul> | 🟢 | [✅](./tests/cat/count.yml#L17)</li></ul> |
| cat.fielddata | 🟢 | [✅](./tests/cat/fielddata.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.health | 🟢 | [✅](./tests/cat/health.yml#L8)</li></ul> | 🔴 | Not Applicable |
| cat.help | 🟢 | [✅](./tests/cat/help.yml#L6)</li></ul> | 🟢 | [✅](./tests/cat/help.yml#L6)</li></ul> |
| cat.indices | 🟢 | [✅](./tests/cat/indices.yml#L17)</li></ul> | 🟢 | [✅](./tests/cat/indices.yml#L17)</li></ul> |
| cat.master | 🟢 | [✅](./tests/cat/master.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.ml_data_frame_analytics | 🟢 | [✅](./tests/cat/ml.yml#L8)</li></ul> | 🟢 | [✅](./tests/cat/ml.yml#L8)</li></ul> |
| cat.ml_datafeeds | 🟢 | [✅](./tests/cat/ml.yml#L12)</li></ul> | 🟢 | [✅](./tests/cat/ml.yml#L12)</li></ul> |
| cat.ml_jobs | 🟢 | [✅](./tests/cat/ml.yml#L16)</li></ul> | 🟢 | [✅](./tests/cat/ml.yml#L16)</li></ul> |
| cat.ml_trained_models | 🟢 | [✅](./tests/cat/ml.yml#L20)</li></ul> | 🟢 | [✅](./tests/cat/ml.yml#L20)</li></ul> |
| cat.nodeattrs | 🟢 | [✅](./tests/cat/nodeattrs.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.nodes | 🟢 | [✅](./tests/cat/nodes.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.pending_tasks | 🟢 | [✅](./tests/cat/pending_tasks.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.plugins | 🟢 | [✅](./tests/cat/plugins.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.recovery | 🟢 | [✅](./tests/cat/recovery.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.repositories | 🟢 | [✅](./tests/cat/repositories.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.segments | 🟢 | [✅](./tests/cat/segments.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.shards | 🟢 | [✅](./tests/cat/shards.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.snapshots | 🟢 | [✅](./tests/cat/snapshots.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.tasks | 🟢 | [✅](./tests/cat/tasks.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.templates | 🟢 | [✅](./tests/cat/templates.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.thread_pool | 🟢 | [✅](./tests/cat/thread_pool.yml#L6)</li></ul> | 🔴 | Not Applicable |
| cat.transforms | 🟢 | [✅](./tests/cat/transform.yml#L31)</li></ul> | 🟢 | [✅](./tests/cat/transform.yml#L31)</li></ul> |
| ccr.delete_auto_follow_pattern | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.follow | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.follow_info | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.follow_stats | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.forget_follower | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.get_auto_follow_pattern | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.pause_auto_follow_pattern | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.pause_follow | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.put_auto_follow_pattern | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.resume_auto_follow_pattern | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.resume_follow | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.stats | 🟢 | ❌ | 🔴 | Not Applicable |
| ccr.unfollow | 🟢 | ❌ | 🔴 | Not Applicable |
| clear_scroll | 🟢 | [✅](./tests/scroll/10_basic.yml#L28)</li></ul> | 🟢 | [✅](./tests/scroll/10_basic.yml#L28)</li></ul> |
| close_point_in_time | 🟢 | [✅](./tests/point_in_time/10_basic.yml#L30)</li></ul> | 🟢 | [✅](./tests/point_in_time/10_basic.yml#L30)</li></ul> |
| cluster.allocation_explain | 🟢 | [✅](./tests/cluster/allocation_explain.yml#L18)</li></ul> | 🔴 | Not Applicable |
| cluster.delete_component_template | 🟢 | [✅](./tests/cluster/component_templates.yml#L29)</li></ul> | 🟢 | [✅](./tests/cluster/component_templates.yml#L29)</li></ul> |
| cluster.delete_voting_config_exclusions | 🟢 | [✅](./tests/cluster/delete_voting_config_exclusions.yml#L8)</li></ul> | 🔴 | Not Applicable |
| cluster.exists_component_template | 🟢 | [✅](./tests/cluster/component_templates.yml#L19)</li></ul> | 🟢 | [✅](./tests/cluster/component_templates.yml#L19)</li></ul> |
| cluster.get_component_template | 🟢 | [✅](./tests/cluster/component_templates.yml#L24)</li></ul> | 🟢 | [✅](./tests/cluster/component_templates.yml#L24)</li></ul> |
| cluster.get_settings | 🟢 | [✅](./tests/cluster/get_settings.yml#L8)</li></ul> | 🔴 | Not Applicable |
| cluster.health | 🟢 | [✅](./tests/cluster/health.yml#L8)</li></ul> | 🔴 | Not Applicable |
| cluster.info | 🟢 | [✅](./tests/cluster/cluster_info.yml#L8)</li></ul> | 🟢 | [✅](./tests/cluster/cluster_info.yml#L8)</li></ul> |
| cluster.pending_tasks | 🟢 | [✅](./tests/cluster/pending_tasks.yml#L8)</li></ul> | 🔴 | Not Applicable |
| cluster.post_voting_config_exclusions | 🟢 | [✅](./tests/cluster/voting_config_exclusions.yml#L8)</li></ul> | 🔴 | Not Applicable |
| cluster.put_component_template | 🟢 | [✅](./tests/cluster/component_templates.yml#L8)</li></ul> | 🟢 | [✅](./tests/cluster/component_templates.yml#L8)</li></ul> |
| cluster.put_settings | 🟢 | [✅](./tests/cluster/put_settings.yml#L8)</li></ul> | 🔴 | Not Applicable |
| cluster.remote_info | 🟢 | [✅](./tests/cluster/remote_info.yml#L8)</li></ul> | 🔴 | Not Applicable |
| cluster.reroute | 🟢 | [✅](./tests/cluster/reroute.yml#L8)</li></ul> | 🔴 | Not Applicable |
| cluster.state | 🟢 | [✅](./tests/cluster/state.yml#L8)</li></ul> | 🔴 | Not Applicable |
| cluster.stats | 🟢 | [✅](./tests/cluster/stats.yml#L8)</li></ul> | 🔴 | Not Applicable |
| connector.check_in | 🟢 | [✅](./tests/entsearch/20_connector.yml#L21)</li></ul> | 🟢 | [✅](./tests/entsearch/20_connector.yml#L21)</li></ul> |
| connector.delete | 🟢 | [✅](./tests/entsearch/20_connector.yml#L55)</li></ul> | 🟢 | [✅](./tests/entsearch/20_connector.yml#L55)</li></ul> |
| connector.get | 🟢 | [✅](./tests/entsearch/20_connector.yml#L34)</li></ul> | 🟢 | [✅](./tests/entsearch/20_connector.yml#L34)</li></ul> |
| connector.last_sync | 🟢 | [✅](./tests/entsearch/20_connector.yml#L26)</li></ul> | 🔴 | [✅](./tests/entsearch/20_connector.yml#L26)</li></ul> |
| connector.list | 🟢 | [✅](./tests/entsearch/20_connector.yml#L41)</li></ul> | 🟢 | [✅](./tests/entsearch/20_connector.yml#L41)</li></ul> |
| connector.post | 🟢 | [✅](./tests/entsearch/20_connector.yml#L45)</li></ul> | 🟢 | [✅](./tests/entsearch/20_connector.yml#L45)</li></ul> |
| connector.put | 🟢 | [✅](./tests/entsearch/20_connector.yml#L14)</li></ul> | 🟢 | [✅](./tests/entsearch/20_connector.yml#L14)</li></ul> |
| connector.sync_job_cancel | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L39)</li></ul> | 🟢 | [✅](./tests/entsearch/30_sync_jobs_serverless.yml#L39)</li></ul> |
| connector.sync_job_check_in | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L34)</li></ul> | 🔴 | Not Applicable |
| connector.sync_job_claim | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L65)</li></ul> | 🔴 | Not Applicable |
| connector.sync_job_delete | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L72)</li></ul> | 🟢 | [✅](./tests/entsearch/30_sync_jobs_serverless.yml#L48)</li></ul> |
| connector.sync_job_error | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L86)</li></ul> | 🔴 | Not Applicable |
| connector.sync_job_get | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L28)</li></ul> | 🟢 | [✅](./tests/entsearch/30_sync_jobs_serverless.yml#L33)</li></ul> |
| connector.sync_job_list | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L61)</li></ul> | 🟢 | [✅](./tests/entsearch/30_sync_jobs_serverless.yml#L44)</li></ul> |
| connector.sync_job_post | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L19)</li></ul> | 🟢 | [✅](./tests/entsearch/30_sync_jobs_serverless.yml#L24)</li></ul> |
| connector.sync_job_update_stats | 🟢 | [✅](./tests/entsearch/30_sync_jobs_stack.yml#L44)</li></ul> | 🔴 | Not Applicable |
| connector.update_active_filtering | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L63)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L63)</li></ul> |
| connector.update_api_key_id | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L240)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L240)</li></ul> |
| connector.update_configuration | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L85)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L85)</li></ul> |
| connector.update_error | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L78)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L78)</li></ul> |
| connector.update_features | 🟢 | [✅](./tests/entsearch/60_connector_updates_stack.yml#L24)</li></ul> | 🔴 | Not Applicable |
| connector.update_filtering | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L31)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L31)</li></ul> |
| connector.update_filtering_validation | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L53)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L53)</li></ul> |
| connector.update_index_name | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L136)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L136)</li></ul> |
| connector.update_name | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L24)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L24)</li></ul> |
| connector.update_native | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L158)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L158)</li></ul> |
| connector.update_pipeline | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L171)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L171)</li></ul> |
| connector.update_scheduling | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L190)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L190)</li></ul> |
| connector.update_service_type | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L228)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L228)</li></ul> |
| connector.update_status | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L216)</li></ul> | 🟢 | [✅](./tests/entsearch/50_connector_updates.yml#L216)</li></ul> |
| count | 🟢 | [✅](./tests/bulk/10_basic.yml#L24)</li></ul> | 🟢 | [✅](./tests/bulk/10_basic.yml#L24)</li></ul> |
| create | 🟢 | [✅](./tests/create/10_basic.yml#L18)</li></ul> | 🟢 | [✅](./tests/create/10_basic.yml#L18)</li></ul> |
| dangling_indices.delete_dangling_index | 🟢 | ❌ | 🔴 | Not Applicable |
| dangling_indices.import_dangling_index | 🟢 | ❌ | 🔴 | Not Applicable |
| dangling_indices.list_dangling_indices | 🟢 | [✅](./tests/dangling_indices/10_basic.yml#L9)</li></ul> | 🔴 | Not Applicable |
| delete | 🟢 | [✅](./tests/delete/10_basic.yml#L16)</li></ul> | 🟢 | [✅](./tests/delete/10_basic.yml#L16)</li></ul> |
| delete_by_query | 🟢 | [✅](./tests/delete_by_query/10_stack.yml#L33)</li></ul> | 🟢 | [✅](./tests/delete_by_query/10_serverless.yml#L33)</li></ul> |
| delete_by_query_rethrottle | 🟢 | [✅](./tests/delete_by_query/10_stack.yml#L45)</li></ul> | 🔴 | Not Applicable |
| delete_script | 🟢 | [✅](./tests/script/10_basic.yml#L33)</li></ul> | 🟢 | [✅](./tests/script/10_basic.yml#L33)</li></ul> |
| enrich.delete_policy | 🟢 | [✅](./tests/enrich/10_basic.yml#L44)</li></ul> | 🟢 | [✅](./tests/enrich/10_basic.yml#L44)</li></ul> |
| enrich.execute_policy | 🟢 | [✅](./tests/enrich/10_basic.yml#L34)</li></ul> | 🟢 | [✅](./tests/enrich/10_basic.yml#L34)</li></ul> |
| enrich.get_policy | 🟢 | [✅](./tests/enrich/10_basic.yml#L39)</li></ul> | 🟢 | [✅](./tests/enrich/10_basic.yml#L39)</li></ul> |
| enrich.put_policy | 🟢 | [✅](./tests/enrich/10_basic.yml#L24)</li></ul> | 🟢 | [✅](./tests/enrich/10_basic.yml#L24)</li></ul> |
| enrich.stats | 🟢 | [✅](./tests/enrich/20_stats.yml#L8)</li></ul> | 🟢 | ❌ |
| eql.delete | 🟢 | [✅](./tests/eql/10_basic.yml#L122)</li></ul> | 🟢 | [✅](./tests/eql/10_basic.yml#L122)</li></ul> |
| eql.get | 🟢 | [✅](./tests/eql/10_basic.yml#L114)</li></ul> | 🟢 | [✅](./tests/eql/10_basic.yml#L114)</li></ul> |
| eql.get_status | 🟢 | [✅](./tests/eql/10_basic.yml#L109)</li></ul> | 🟢 | [✅](./tests/eql/10_basic.yml#L109)</li></ul> |
| eql.search | 🟢 | [✅](./tests/eql/10_basic.yml#L99)</li></ul> | 🟢 | [✅](./tests/eql/10_basic.yml#L99)</li></ul> |
| esql.async_query | 🟢 | [✅](./tests/esql/20_async.yml#L40)</li></ul> | 🔴 | Not Applicable |
| esql.async_query_get | 🟢 | [✅](./tests/esql/20_async.yml#L56)</li></ul> | 🔴 | Not Applicable |
| esql.query | 🟢 | [✅](./tests/esql/10_query.yml#L40)</li></ul> | 🔴 | [✅](./tests/esql/10_query.yml#L40)</li></ul> |
| exists | 🟢 | [✅](./tests/exists/10_basic.yml#L19)</li></ul> | 🟢 | [✅](./tests/exists/10_basic.yml#L19)</li></ul> |
| exists_source | 🟢 | [✅](./tests/exists_source/10_basic.yml#L19)</li></ul> | 🟢 | [✅](./tests/exists_source/10_basic.yml#L19)</li></ul> |
| explain | 🟢 | [✅](./tests/explain/10_basic.yml#L24)</li></ul> | 🟢 | [✅](./tests/explain/10_basic.yml#L24)</li></ul> |
| features.get_features | 🟢 | [✅](./tests/features/10_basic.yml#L8)</li></ul> | 🔴 | Not Applicable |
| features.reset_features | 🟢 | [✅](./tests/features/10_basic.yml#L12)</li></ul> | 🔴 | Not Applicable |
| field_caps | 🟢 | [✅](./tests/field_caps/10_basic.yml#L21)</li></ul> | 🟢 | [✅](./tests/field_caps/10_basic.yml#L21)</li></ul> |
| fleet.global_checkpoints | 🟢 | ❌ | 🔴 | Not Applicable |
| fleet.msearch | 🟢 | ❌ | 🔴 | Not Applicable |
| fleet.search | 🟢 | ❌ | 🔴 | Not Applicable |
| get | 🟢 | [✅](./tests/get/10_basic.yml#L15)</li></ul> | 🟢 | [✅](./tests/get/10_basic.yml#L15)</li></ul> |
| get_script | 🟢 | [✅](./tests/script/10_basic.yml#L29)</li></ul> | 🟢 | [✅](./tests/script/10_basic.yml#L29)</li></ul> |
| get_script_context | 🟢 | ❌ | 🔴 | Not Applicable |
| get_script_languages | 🟢 | ❌ | 🔴 | Not Applicable |
| get_source | 🟢 | [✅](./tests/get_source/10_basic.yml#L20)</li></ul> | 🟢 | [✅](./tests/get_source/10_basic.yml#L20)</li></ul> |
| graph.explore | 🟢 | [✅](./tests/graph/explore.yml#L33)</li></ul> | 🟢 | [✅](./tests/graph/explore.yml#L33)</li></ul> |
| health_report | 🟢 | [✅](./tests/health_report.yml#L8)</li></ul> | 🔴 | Not Applicable |
| ilm.delete_lifecycle | 🟢 | ❌ | 🔴 | Not Applicable |
| ilm.explain_lifecycle | 🟢 | ❌ | 🔴 | Not Applicable |
| ilm.get_lifecycle | 🟢 | ❌ | 🔴 | Not Applicable |
| ilm.get_status | 🟢 | ❌ | 🔴 | Not Applicable |
| ilm.migrate_to_data_tiers | 🟢 | ❌ | 🔴 | Not Applicable |
| ilm.move_to_step | 🟢 | ❌ | 🔴 | Not Applicable |
| ilm.put_lifecycle | 🟢 | ❌ | 🔴 | Not Applicable |
| ilm.remove_policy | 🟢 | ❌ | 🔴 | Not Applicable |
| ilm.retry | 🟢 | ❌ | 🔴 | Not Applicable |
| ilm.start | 🟢 | ❌ | 🔴 | Not Applicable |
| ilm.stop | 🟢 | ❌ | 🔴 | Not Applicable |
| index | 🟢 | [✅](./tests/async_search/10_basic.yml#L8)</li></ul> | 🟢 | [✅](./tests/async_search/10_basic.yml#L8)</li></ul> |
| indices.add_block | 🟢 | [✅](./tests/indices/block.yml#L16)</li></ul> | 🟢 | [✅](./tests/indices/block.yml#L16)</li></ul> |
| indices.analyze | 🟢 | [✅](./tests/indices/analyze.yml#L19)</li></ul> | 🟢 | [✅](./tests/indices/analyze.yml#L19)</li></ul> |
| indices.clear_cache | 🟢 | [✅](./tests/indices/clear_cache.yml#L8)</li></ul> | 🔴 | Not Applicable |
| indices.clone | 🟢 | [✅](./tests/indices/clone.yml#L50)</li></ul> | 🔴 | Not Applicable |
| indices.close | 🟢 | [✅](./tests/indices/open_close.yml#L21)</li></ul> | 🔴 | Not Applicable |
| indices.create | 🟢 | [✅](./tests/cat/aliases.yml#L8)</li></ul> | 🟢 | [✅](./tests/cat/aliases.yml#L8)</li></ul> |
| indices.create_data_stream | 🟢 | [✅](./tests/indices/data_streams.yml#L26)</li></ul> | 🟢 | [✅](./tests/indices/data_streams.yml#L26)</li></ul> |
| indices.data_streams_stats | 🟢 | [✅](./tests/indices/data_streams.yml#L36)</li></ul> | 🟢 | [✅](./tests/indices/data_streams.yml#L36)</li></ul> |
| indices.delete | 🟢 | [✅](./tests/async_search/10_basic.yml#L29)</li></ul> | 🟢 | [✅](./tests/async_search/10_basic.yml#L29)</li></ul> |
| indices.delete_alias | 🟢 | [✅](./tests/indices/alias.yml#L49)</li></ul> | 🟢 | [✅](./tests/indices/alias.yml#L49)</li></ul> |
| indices.delete_data_lifecycle | 🟢 | [✅](./tests/indices/20_data_lifecycle.yml#L22)</li></ul> | 🟢 | ❌ |
| indices.delete_data_stream | 🟢 | [✅](./tests/indices/data_streams.yml#L40)</li></ul> | 🟢 | [✅](./tests/indices/data_streams.yml#L40)</li></ul> |
| indices.delete_index_template | 🟢 | [✅](./tests/indices/data_streams.yml#L21)</li></ul> | 🟢 | [✅](./tests/indices/data_streams.yml#L21)</li></ul> |
| indices.delete_template | 🟢 | [✅](./tests/indices/exists_template.yml#L8)</li></ul> | 🔴 | Not Applicable |
| indices.disk_usage | 🟢 | [✅](./tests/indices/disk_usage.yml#L47)</li></ul> | 🔴 | Not Applicable |
| indices.downsample | 🟢 | ❌ | 🔴 | Not Applicable |
| indices.exists | 🟢 | [✅](./tests/indices/exists.yml#L18)</li></ul> | 🟢 | [✅](./tests/indices/exists.yml#L18)</li></ul> |
| indices.exists_alias | 🟢 | [✅](./tests/indices/alias.yml#L37)</li></ul> | 🟢 | [✅](./tests/indices/alias.yml#L37)</li></ul> |
| indices.exists_index_template | 🟢 | [✅](./tests/indices/index_template.yml#L31)</li></ul> | 🟢 | [✅](./tests/indices/index_template.yml#L31)</li></ul> |
| indices.exists_template | 🟢 | [✅](./tests/indices/exists_template.yml#L20)</li></ul> | 🔴 | Not Applicable |
| indices.explain_data_lifecycle | 🟢 | [✅](./tests/indices/10_data_lifecycle.yml#L27)</li></ul> | 🟢 | [✅](./tests/indices/10_data_lifecycle.yml#L27)</li></ul> |
| indices.field_usage_stats | 🟢 | [✅](./tests/indices/field_usage.yml#L32)</li></ul> | 🔴 | Not Applicable |
| indices.flush | 🟢 | [✅](./tests/indices/flush.yml#L22)</li></ul> | 🔴 | Not Applicable |
| indices.forcemerge | 🟢 | [✅](./tests/indices/forcemerge.yml#L18)</li></ul> | 🔴 | Not Applicable |
| indices.get | 🟢 | [✅](./tests/indices/get.yml#L17)</li></ul> | 🟢 | [✅](./tests/indices/get.yml#L17)</li></ul> |
| indices.get_alias | 🟢 | [✅](./tests/indices/alias.yml#L31)</li></ul> | 🟢 | [✅](./tests/indices/alias.yml#L31)</li></ul> |
| indices.get_data_lifecycle | 🟢 | [✅](./tests/indices/10_data_lifecycle.yml#L22)</li></ul> | 🟢 | [✅](./tests/indices/10_data_lifecycle.yml#L22)</li></ul> |
| indices.get_data_stream | 🟢 | [✅](./tests/indices/data_streams.yml#L31)</li></ul> | 🟢 | [✅](./tests/indices/data_streams.yml#L31)</li></ul> |
| indices.get_field_mapping | 🟢 | [✅](./tests/indices/get_field_mapping.yml#L23)</li></ul> | 🔴 | Not Applicable |
| indices.get_index_template | 🟢 | [✅](./tests/indices/index_template.yml#L24)</li></ul> | 🟢 | [✅](./tests/indices/index_template.yml#L24)</li></ul> |
| indices.get_mapping | 🟢 | [✅](./tests/indices/mapping.yml#L32)</li></ul> | 🟢 | [✅](./tests/indices/mapping.yml#L32)</li></ul> |
| indices.get_settings | 🟢 | [✅](./tests/indices/settings.yml#L21)</li></ul> | 🟢 | [✅](./tests/indices/settings.yml#L21)</li></ul> |
| indices.get_template | 🟢 | [✅](./tests/indices/template.yml#L21)</li></ul> | 🔴 | Not Applicable |
| indices.migrate_to_data_stream | 🟢 | [✅](./tests/indices/migrate_modify_data_stream.yml#L39)</li></ul> | 🟢 | [✅](./tests/indices/migrate_modify_data_stream.yml#L39)</li></ul> |
| indices.modify_data_stream | 🟢 | [✅](./tests/indices/migrate_modify_data_stream.yml#L43)</li></ul> | 🟢 | [✅](./tests/indices/migrate_modify_data_stream.yml#L43)</li></ul> |
| indices.open | 🟢 | [✅](./tests/indices/open_close.yml#L29)</li></ul> | 🔴 | Not Applicable |
| indices.promote_data_stream | 🟢 | ❌ | 🔴 | Not Applicable |
| indices.put_alias | 🟢 | [✅](./tests/cat/aliases.yml#L11)</li></ul> | 🟢 | [✅](./tests/cat/aliases.yml#L11)</li></ul> |
| indices.put_data_lifecycle | 🟢 | [✅](./tests/indices/10_data_lifecycle.yml#L16)</li></ul> | 🟢 | [✅](./tests/indices/10_data_lifecycle.yml#L16)</li></ul> |
| indices.put_index_template | 🟢 | [✅](./tests/indices/data_streams.yml#L8)</li></ul> | 🟢 | [✅](./tests/indices/data_streams.yml#L8)</li></ul> |
| indices.put_mapping | 🟢 | [✅](./tests/indices/mapping.yml#L18)</li></ul> | 🟢 | [✅](./tests/indices/mapping.yml#L18)</li></ul> |
| indices.put_settings | 🟢 | [✅](./tests/indices/clone.yml#L39)</li></ul> | 🟢 | [✅](./tests/indices/settings.yml#L27)</li></ul> |
| indices.put_template | 🟢 | [✅](./tests/indices/exists_template.yml#L24)</li></ul> | 🟢 | ❌ |
| indices.recovery | 🟢 | [✅](./tests/indices/recovery.yml#L22)</li></ul> | 🔴 | Not Applicable |
| indices.refresh | 🟢 | [✅](./tests/graph/explore.yml#L24)</li></ul> | 🟢 | [✅](./tests/graph/explore.yml#L24)</li></ul> |
| indices.reload_search_analyzers | 🟢 | ❌ | 🔴 | Not Applicable |
| indices.resolve_cluster | 🟢 | [✅](./tests/indices/resolve_cluster.yml#L31)</li></ul> | 🔴 | Not Applicable |
| indices.resolve_index | 🟢 | [✅](./tests/indices/resolve.yml#L22)</li></ul> | 🟢 | [✅](./tests/indices/resolve.yml#L22)</li></ul> |
| indices.rollover | 🟢 | [✅](./tests/indices/rollover.yml#L40)</li></ul> | 🟢 | [✅](./tests/indices/rollover.yml#L40)</li></ul> |
| indices.segments | 🟢 | [✅](./tests/indices/segments.yml#L27)</li></ul> | 🔴 | Not Applicable |
| indices.shard_stores | 🟢 | [✅](./tests/indices/shard_stores.yml#L27)</li></ul> | 🔴 | Not Applicable |
| indices.shrink | 🟢 | [✅](./tests/indices/shrink.yml#L37)</li></ul> | 🔴 | Not Applicable |
| indices.simulate_index_template | 🟢 | [✅](./tests/indices/simulate_template_stack.yml#L37)</li></ul> | 🟢 | [✅](./tests/indices/simulate_template_serverless.yml#L37)</li></ul> |
| indices.simulate_template | 🟢 | [✅](./tests/indices/simulate_index_template.yml#L38)</li></ul> | 🟢 | [✅](./tests/indices/simulate_index_template.yml#L38)</li></ul> |
| indices.split | 🟢 | [✅](./tests/indices/split.yml#L49)</li></ul> | 🔴 | Not Applicable |
| indices.stats | 🟢 | [✅](./tests/indices/flush.yml#L25)</li></ul> | 🔴 | Not Applicable |
| indices.unfreeze | 🟢 | ❌ | 🔴 | Not Applicable |
| indices.update_aliases | 🟢 | [✅](./tests/indices/alias.yml#L41)</li></ul> | 🟢 | [✅](./tests/indices/alias.yml#L41)</li></ul> |
| indices.validate_query | 🟢 | [✅](./tests/validate_query/10_basic.yml#L16)</li></ul> | 🟢 | [✅](./tests/validate_query/10_basic.yml#L16)</li></ul> |
| inference.delete | 🟢 | [✅](./tests/inference/10_basic.yml#L37)</li></ul> | 🟢 | [✅](./tests/inference/10_basic.yml#L37)</li></ul> |
| inference.get | 🟢 | [✅](./tests/inference/10_basic.yml#L25)</li></ul> | 🟢 | [✅](./tests/inference/10_basic.yml#L25)</li></ul> |
| inference.inference | 🟢 | [✅](./tests/inference/10_basic.yml#L30)</li></ul> | 🟢 | [✅](./tests/inference/10_basic.yml#L30)</li></ul> |
| inference.put | 🟢 | [✅](./tests/inference/10_basic.yml#L8)</li></ul> | 🟢 | [✅](./tests/inference/10_basic.yml#L8)</li></ul> |
| info | 🟢 | [✅](./tests/info_stack.yml#L8)</li></ul> | 🟢 | [✅](./tests/info_serverless.yml#L8)</li></ul> |
| ingest.delete_geoip_database | 🟢 | ❌ | 🔴 | Not Applicable |
| ingest.delete_pipeline | 🟢 | [✅](./tests/ingest/10_basic.yml#L29)</li></ul> | 🟢 | [✅](./tests/ingest/10_basic.yml#L29)</li></ul> |
| ingest.geo_ip_stats | 🟢 | ❌ | 🔴 | Not Applicable |
| ingest.get_geoip_database | 🟢 | ❌ | 🔴 | Not Applicable |
| ingest.get_pipeline | 🟢 | [✅](./tests/ingest/10_basic.yml#L16)</li></ul> | 🟢 | [✅](./tests/ingest/10_basic.yml#L16)</li></ul> |
| ingest.processor_grok | 🟢 | [✅](./tests/ingest/10_basic.yml#L32)</li></ul> | 🟢 | [✅](./tests/ingest/10_basic.yml#L32)</li></ul> |
| ingest.put_geoip_database | 🟢 | ❌ | 🔴 | Not Applicable |
| ingest.put_pipeline | 🟢 | [✅](./tests/ingest/10_basic.yml#L8)</li></ul> | 🟢 | [✅](./tests/ingest/10_basic.yml#L8)</li></ul> |
| ingest.simulate | 🟢 | [✅](./tests/ingest/10_basic.yml#L20)</li></ul> | 🟢 | [✅](./tests/ingest/10_basic.yml#L20)</li></ul> |
| knn_search | 🟢 | ❌ | 🔴 | Not Applicable |
| license.delete | 🟢 | ❌ | 🔴 | Not Applicable |
| license.get | 🟢 | [✅](./tests/license.yml#L8)</li></ul> | 🟢 | [✅](./tests/license.yml#L8)</li></ul> |
| license.get_basic_status | 🟢 | ❌ | 🔴 | Not Applicable |
| license.get_trial_status | 🟢 | ❌ | 🔴 | Not Applicable |
| license.post | 🟢 | ❌ | 🔴 | Not Applicable |
| license.post_start_basic | 🟢 | ❌ | 🔴 | Not Applicable |
| license.post_start_trial | 🟢 | ❌ | 🔴 | Not Applicable |
| logstash.delete_pipeline | 🟢 | [✅](./tests/logstash/10_basic.yml#L30)</li></ul> | 🟢 | [✅](./tests/logstash/10_basic.yml#L30)</li></ul> |
| logstash.get_pipeline | 🟢 | [✅](./tests/logstash/10_basic.yml#L26)</li></ul> | 🟢 | [✅](./tests/logstash/10_basic.yml#L26)</li></ul> |
| logstash.put_pipeline | 🟢 | [✅](./tests/logstash/10_basic.yml#L8)</li></ul> | 🟢 | [✅](./tests/logstash/10_basic.yml#L8)</li></ul> |
| mget | 🟢 | [✅](./tests/mget.yml#L24)</li></ul> | 🟢 | [✅](./tests/mget.yml#L24)</li></ul> |
| migration.deprecations | 🟢 | ❌ | 🔴 | Not Applicable |
| migration.get_feature_upgrade_status | 🟢 | ❌ | 🔴 | Not Applicable |
| migration.post_feature_upgrade | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.clear_trained_model_deployment_cache | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.close_job | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L69)</li></ul> | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L69)</li></ul> |
| ml.delete_calendar | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L8)</li></ul> | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L8)</li></ul> |
| ml.delete_calendar_event | 🟢 | [✅](./tests/machine_learning/calendar_events_crud.yml#L88)</li></ul> | 🟢 | [✅](./tests/machine_learning/calendar_events_crud.yml#L88)</li></ul> |
| ml.delete_calendar_job | 🟢 | [✅](./tests/machine_learning/calendar_job.yml#L37)</li></ul> | 🟢 | [✅](./tests/machine_learning/calendar_job.yml#L37)</li></ul> |
| ml.delete_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L80)</li></ul> | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L80)</li></ul> |
| ml.delete_datafeed | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L90)</li></ul> | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L90)</li></ul> |
| ml.delete_expired_data | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.delete_filter | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L37)</li></ul> | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L37)</li></ul> |
| ml.delete_forecast | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.delete_job | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L14)</li></ul> | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L14)</li></ul> |
| ml.delete_model_snapshot | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.delete_trained_model | 🟢 | [✅](./tests/machine_learning/10_trained_model.yml#L36)</li></ul> | 🟢 | [✅](./tests/machine_learning/10_trained_model.yml#L36)</li></ul> |
| ml.delete_trained_model_alias | 🟢 | [✅](./tests/machine_learning/trained_model_aliases.yml#L40)</li></ul> | 🟢 | [✅](./tests/machine_learning/trained_model_aliases.yml#L40)</li></ul> |
| ml.estimate_model_memory | 🟢 | [✅](./tests/machine_learning/estimate_model_memory.yml#L8)</li></ul> | 🟢 | [✅](./tests/machine_learning/estimate_model_memory.yml#L8)</li></ul> |
| ml.evaluate_data_frame | 🟢 | [✅](./tests/machine_learning/data_frame_evaluate.yml#L185)</li></ul> | 🟢 | [✅](./tests/machine_learning/data_frame_evaluate.yml#L185)</li></ul> |
| ml.explain_data_frame_analytics | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.flush_job | 🟢 | ❌ | 🟢 | ❌ |
| ml.forecast | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.get_buckets | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.get_calendar_events | 🟢 | [✅](./tests/machine_learning/calendar_events_crud.yml#L29)</li></ul> | 🟢 | [✅](./tests/machine_learning/calendar_events_crud.yml#L29)</li></ul> |
| ml.get_calendars | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L25)</li></ul> | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L25)</li></ul> |
| ml.get_categories | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.get_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L37)</li></ul> | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L37)</li></ul> |
| ml.get_data_frame_analytics_stats | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L61)</li></ul> | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L61)</li></ul> |
| ml.get_datafeed_stats | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L53)</li></ul> | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L53)</li></ul> |
| ml.get_datafeeds | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L47)</li></ul> | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L47)</li></ul> |
| ml.get_filters | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L17)</li></ul> | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L17)</li></ul> |
| ml.get_influencers | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.get_job_stats | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L21)</li></ul> | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L21)</li></ul> |
| ml.get_jobs | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L15)</li></ul> | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L15)</li></ul> |
| ml.get_memory_stats | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.get_model_snapshot_upgrade_stats | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.get_model_snapshots | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.get_overall_buckets | 🟢 | [✅](./tests/machine_learning/get_overall_buckets.yml#L8)</li></ul> | 🟢 | [✅](./tests/machine_learning/get_overall_buckets.yml#L8)</li></ul> |
| ml.get_records | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.get_trained_models | 🟢 | [✅](./tests/machine_learning/10_trained_model.yml#L31)</li></ul> | 🟢 | [✅](./tests/machine_learning/10_trained_model.yml#L31)</li></ul> |
| ml.get_trained_models_stats | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L47)</li></ul> | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L47)</li></ul> |
| ml.infer_trained_model | 🟢 | [✅](./tests/machine_learning/30_trained_model_stack.yml#L67)</li></ul> | 🟢 | ❌ |
| ml.info | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.open_job | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L46)</li></ul> | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L46)</li></ul> |
| ml.post_calendar_events | 🟢 | [✅](./tests/machine_learning/calendar_events_crud.yml#L17)</li></ul> | 🟢 | [✅](./tests/machine_learning/calendar_events_crud.yml#L17)</li></ul> |
| ml.post_data | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.preview_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L65)</li></ul> | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L65)</li></ul> |
| ml.preview_datafeed | 🟢 | [✅](./tests/machine_learning/preview_datafeed.yml#L105)</li></ul> | 🟢 | [✅](./tests/machine_learning/preview_datafeed.yml#L105)</li></ul> |
| ml.put_calendar | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L57)</li></ul> | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L57)</li></ul> |
| ml.put_calendar_job | 🟢 | [✅](./tests/machine_learning/calendar_job.yml#L30)</li></ul> | 🟢 | [✅](./tests/machine_learning/calendar_job.yml#L30)</li></ul> |
| ml.put_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L42)</li></ul> | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L42)</li></ul> |
| ml.put_datafeed | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L58)</li></ul> | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L58)</li></ul> |
| ml.put_filter | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L8)</li></ul> | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L8)</li></ul> |
| ml.put_job | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L30)</li></ul> | 🟢 | [✅](./tests/machine_learning/calendar_crud.yml#L30)</li></ul> |
| ml.put_trained_model | 🟢 | [✅](./tests/machine_learning/10_trained_model.yml#L8)</li></ul> | 🟢 | [✅](./tests/machine_learning/10_trained_model.yml#L8)</li></ul> |
| ml.put_trained_model_alias | 🟢 | [✅](./tests/machine_learning/trained_model_aliases.yml#L35)</li></ul> | 🟢 | [✅](./tests/machine_learning/trained_model_aliases.yml#L35)</li></ul> |
| ml.put_trained_model_definition_part | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L36)</li></ul> | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L36)</li></ul> |
| ml.put_trained_model_vocabulary | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L30)</li></ul> | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L30)</li></ul> |
| ml.reset_job | 🟢 | [✅](./tests/machine_learning/jobs_reset.yml#L29)</li></ul> | 🟢 | [✅](./tests/machine_learning/jobs_reset.yml#L29)</li></ul> |
| ml.revert_model_snapshot | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.set_upgrade_mode | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.start_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L68)</li></ul> | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L68)</li></ul> |
| ml.start_datafeed | 🟢 | [✅](./tests/machine_learning/start_stop_datafeed.yml#L62)</li></ul> | 🟢 | [✅](./tests/machine_learning/start_stop_datafeed.yml#L62)</li></ul> |
| ml.start_trained_model_deployment | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L52)</li></ul> | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L52)</li></ul> |
| ml.stop_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L71)</li></ul> | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L71)</li></ul> |
| ml.stop_datafeed | 🟢 | [✅](./tests/machine_learning/start_stop_datafeed.yml#L70)</li></ul> | 🟢 | [✅](./tests/machine_learning/start_stop_datafeed.yml#L70)</li></ul> |
| ml.stop_trained_model_deployment | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L67)</li></ul> | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L67)</li></ul> |
| ml.update_data_frame_analytics | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L74)</li></ul> | 🟢 | [✅](./tests/machine_learning/data_frame_analytics.yml#L74)</li></ul> |
| ml.update_datafeed | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L72)</li></ul> | 🟢 | [✅](./tests/machine_learning/datafeed_crud.yml#L72)</li></ul> |
| ml.update_filter | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L25)</li></ul> | 🟢 | [✅](./tests/machine_learning/filter_crud.yml#L25)</li></ul> |
| ml.update_job | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L75)</li></ul> | 🟢 | [✅](./tests/machine_learning/jobs_crud.yml#L75)</li></ul> |
| ml.update_model_snapshot | 🟢 | ❌ | 🔴 | Not Applicable |
| ml.update_trained_model_deployment | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L58)</li></ul> | 🟢 | [✅](./tests/machine_learning/20_trained_model.yml#L58)</li></ul> |
| ml.upgrade_job_snapshot | 🟢 | ❌ | 🔴 | Not Applicable |
| monitoring.bulk | 🟢 | ❌ | 🔴 | Not Applicable |
| msearch | 🟢 | [✅](./tests/msearch.yml#L26)</li></ul> | 🟢 | [✅](./tests/msearch.yml#L26)</li></ul> |
| msearch_template | 🟢 | [✅](./tests/msearch_template.yml#L29)</li></ul> | 🟢 | [✅](./tests/msearch_template.yml#L29)</li></ul> |
| mtermvectors | 🟢 | [✅](./tests/mtermvectors/10_basic.yml#L25)</li></ul> | 🟢 | [✅](./tests/mtermvectors/10_basic.yml#L25)</li></ul> |
| nodes.clear_repositories_metering_archive | 🟢 | ❌ | 🔴 | Not Applicable |
| nodes.get_repositories_metering_info | 🟢 | ❌ | 🔴 | Not Applicable |
| nodes.hot_threads | 🟢 | ❌ | 🔴 | Not Applicable |
| nodes.info | 🟢 | [✅](./tests/entsearch/10_basic.yml#L12)</li></ul> | 🔴 | Not Applicable |
| nodes.reload_secure_settings | 🟢 | ❌ | 🔴 | Not Applicable |
| nodes.stats | 🟢 | ❌ | 🔴 | Not Applicable |
| nodes.usage | 🟢 | ❌ | 🔴 | Not Applicable |
| open_point_in_time | 🟢 | [✅](./tests/point_in_time/10_basic.yml#L16)</li></ul> | 🟢 | [✅](./tests/point_in_time/10_basic.yml#L16)</li></ul> |
| ping | 🟢 | [✅](./tests/ping/ping.yml#L8)</li></ul> | 🟢 | [✅](./tests/ping/ping.yml#L8)</li></ul> |
| put_script | 🟢 | [✅](./tests/msearch_template.yml#L10)</li></ul> | 🟢 | [✅](./tests/msearch_template.yml#L10)</li></ul> |
| query_rules.delete_rule | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L46)</li></ul> | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L46)</li></ul> |
| query_rules.delete_ruleset | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L22)</li></ul> | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L22)</li></ul> |
| query_rules.get_rule | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L40)</li></ul> | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L40)</li></ul> |
| query_rules.get_ruleset | 🟢 | [✅](./tests/query_rules/20_rulesets.yml#L29)</li></ul> | 🟢 | [✅](./tests/query_rules/20_rulesets.yml#L29)</li></ul> |
| query_rules.list_rulesets | 🟢 | [✅](./tests/query_rules/20_rulesets.yml#L33)</li></ul> | 🟢 | [✅](./tests/query_rules/20_rulesets.yml#L33)</li></ul> |
| query_rules.put_rule | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L27)</li></ul> | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L27)</li></ul> |
| query_rules.put_ruleset | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L8)</li></ul> | 🟢 | [✅](./tests/query_rules/10_query_rules.yml#L8)</li></ul> |
| rank_eval | 🟢 | [✅](./tests/rank_eval.yml#L20)</li></ul> | 🟢 | [✅](./tests/rank_eval.yml#L20)</li></ul> |
| reindex | 🟢 | [✅](./tests/reindex/10_basic.yml#L23)</li></ul> | 🟢 | [✅](./tests/reindex/10_basic.yml#L23)</li></ul> |
| reindex_rethrottle | 🟢 | ❌ | 🔴 | Not Applicable |
| render_search_template | 🟢 | [✅](./tests/search_template/10_basic.yml#L29)</li></ul> | 🟢 | [✅](./tests/search_template/10_basic.yml#L29)</li></ul> |
| rollup.delete_job | 🟢 | ❌ | 🔴 | Not Applicable |
| rollup.get_jobs | 🟢 | ❌ | 🔴 | Not Applicable |
| rollup.get_rollup_caps | 🟢 | ❌ | 🔴 | Not Applicable |
| rollup.get_rollup_index_caps | 🟢 | ❌ | 🔴 | Not Applicable |
| rollup.put_job | 🟢 | ❌ | 🔴 | Not Applicable |
| rollup.rollup_search | 🟢 | ❌ | 🔴 | Not Applicable |
| rollup.start_job | 🟢 | ❌ | 🔴 | Not Applicable |
| rollup.stop_job | 🟢 | ❌ | 🔴 | Not Applicable |
| scripts_painless_execute | 🟢 | [✅](./tests/script/10_basic.yml#L36)</li></ul> | 🟢 | [✅](./tests/script/10_basic.yml#L36)</li></ul> |
| scroll | 🟢 | [✅](./tests/scroll/10_basic.yml#L20)</li></ul> | 🟢 | [✅](./tests/scroll/10_basic.yml#L20)</li></ul> |
| search | 🟢 | [✅](./tests/indices/rollover.yml#L64)</li></ul> | 🟢 | [✅](./tests/indices/rollover.yml#L64)</li></ul> |
| search_application.delete | 🟢 | [✅](./tests/search_application/10_basic.yml#L61)</li></ul> | 🟢 | [✅](./tests/search_application/10_basic.yml#L61)</li></ul> |
| search_application.delete_behavioral_analytics | 🟢 | [✅](./tests/search_application/20_behavioral_analytics.yml#L17)</li></ul> | 🟢 | [✅](./tests/search_application/20_behavioral_analytics.yml#L17)</li></ul> |
| search_application.get | 🟢 | [✅](./tests/search_application/10_basic.yml#L48)</li></ul> | 🟢 | [✅](./tests/search_application/10_basic.yml#L48)</li></ul> |
| search_application.get_behavioral_analytics | 🟢 | [✅](./tests/search_application/20_behavioral_analytics.yml#L13)</li></ul> | 🟢 | [✅](./tests/search_application/20_behavioral_analytics.yml#L13)</li></ul> |
| search_application.list | 🟢 | [✅](./tests/search_application/10_basic.yml#L58)</li></ul> | 🟢 | [✅](./tests/search_application/10_basic.yml#L58)</li></ul> |
| search_application.post_behavioral_analytics_event | 🟢 | [✅](./tests/search_application/30_behavioral_analytics_event.yml#L18)</li></ul> | 🔴 | Not Applicable |
| search_application.put | 🟢 | [✅](./tests/search_application/10_basic.yml#L24)</li></ul> | 🟢 | [✅](./tests/search_application/10_basic.yml#L24)</li></ul> |
| search_application.put_behavioral_analytics | 🟢 | [✅](./tests/search_application/20_behavioral_analytics.yml#L8)</li></ul> | 🟢 | [✅](./tests/search_application/20_behavioral_analytics.yml#L8)</li></ul> |
| search_application.render_query | 🟢 | [✅](./tests/search_application/40_render_query.yml#L77)</li></ul> | 🔴 | Not Applicable |
| search_application.search | 🟢 | [✅](./tests/search_application/10_basic.yml#L52)</li></ul> | 🟢 | [✅](./tests/search_application/10_basic.yml#L52)</li></ul> |
| search_mvt | 🟢 | [✅](./tests/search_mvt/10_basic.yml#L33)</li></ul> | 🟢 | [✅](./tests/search_mvt/10_basic.yml#L33)</li></ul> |
| search_shards | 🟢 | ❌ | 🔴 | Not Applicable |
| search_template | 🟢 | [✅](./tests/search_template/10_basic.yml#L38)</li></ul> | 🟢 | [✅](./tests/search_template/10_basic.yml#L38)</li></ul> |
| searchable_snapshots.cache_stats | 🟢 | ❌ | 🔴 | Not Applicable |
| searchable_snapshots.clear_cache | 🟢 | ❌ | 🔴 | Not Applicable |
| searchable_snapshots.mount | 🟢 | ❌ | 🔴 | Not Applicable |
| searchable_snapshots.stats | 🟢 | ❌ | 🔴 | Not Applicable |
| security.activate_user_profile | 🟢 | ❌ | 🔴 | Not Applicable |
| security.authenticate | 🟢 | [✅](./tests/security/20_authenticate.yml#L8)</li></ul> | 🟢 | [✅](./tests/security/20_authenticate.yml#L8)</li></ul> |
| security.bulk_delete_role | 🟢 | [✅](./tests/security/40_roles.yml#L91)</li></ul> | 🔴 | Not Applicable |
| security.bulk_put_role | 🟢 | [✅](./tests/security/40_roles.yml#L64)</li></ul> | 🔴 | Not Applicable |
| security.bulk_update_api_keys | 🟢 | ❌ | 🔴 | Not Applicable |
| security.change_password | 🟢 | ❌ | 🔴 | Not Applicable |
| security.clear_api_key_cache | 🟢 | ❌ | 🔴 | Not Applicable |
| security.clear_cached_privileges | 🟢 | ❌ | 🔴 | Not Applicable |
| security.clear_cached_realms | 🟢 | ❌ | 🔴 | Not Applicable |
| security.clear_cached_roles | 🟢 | ❌ | 🔴 | Not Applicable |
| security.clear_cached_service_tokens | 🟢 | ❌ | 🔴 | Not Applicable |
| security.create_api_key | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L8)</li></ul> | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L8)</li></ul> |
| security.create_cross_cluster_api_key | 🟢 | ❌ | 🔴 | Not Applicable |
| security.create_service_token | 🟢 | ❌ | 🔴 | Not Applicable |
| security.delete_privileges | 🟢 | ❌ | 🔴 | Not Applicable |
| security.delete_role | 🟢 | [✅](./tests/security/40_roles.yml#L23)</li></ul> | 🔴 | Not Applicable |
| security.delete_role_mapping | 🟢 | ❌ | 🔴 | Not Applicable |
| security.delete_service_token | 🟢 | ❌ | 🔴 | Not Applicable |
| security.delete_user | 🟢 | [✅](./tests/security/40_roles.yml#L19)</li></ul> | 🔴 | Not Applicable |
| security.disable_user | 🟢 | ❌ | 🔴 | Not Applicable |
| security.disable_user_profile | 🟢 | ❌ | 🔴 | Not Applicable |
| security.enable_user | 🟢 | ❌ | 🔴 | Not Applicable |
| security.enable_user_profile | 🟢 | ❌ | 🔴 | Not Applicable |
| security.enroll_kibana | 🟢 | ❌ | 🔴 | Not Applicable |
| security.enroll_node | 🟢 | ❌ | 🔴 | Not Applicable |
| security.get_api_key | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L19)</li></ul> | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L19)</li></ul> |
| security.get_builtin_privileges | 🟢 | ❌ | 🔴 | Not Applicable |
| security.get_privileges | 🟢 | ❌ | 🔴 | Not Applicable |
| security.get_role | 🟢 | [✅](./tests/security/40_roles.yml#L47)</li></ul> | 🔴 | Not Applicable |
| security.get_role_mapping | 🟢 | ❌ | 🔴 | Not Applicable |
| security.get_service_accounts | 🟢 | ❌ | 🔴 | Not Applicable |
| security.get_service_credentials | 🟢 | ❌ | 🔴 | Not Applicable |
| security.get_settings | 🟢 | ❌ | 🔴 | Not Applicable |
| security.get_token | 🟢 | ❌ | 🔴 | Not Applicable |
| security.get_user | 🟢 | ❌ | 🔴 | Not Applicable |
| security.get_user_privileges | 🟢 | ❌ | 🔴 | Not Applicable |
| security.get_user_profile | 🟢 | ❌ | 🔴 | Not Applicable |
| security.grant_api_key | 🟢 | ❌ | 🔴 | Not Applicable |
| security.has_privileges | 🟢 | [✅](./tests/security/30_has_privileges.yml#L8)</li></ul> | 🟢 | [✅](./tests/security/30_has_privileges.yml#L8)</li></ul> |
| security.has_privileges_user_profile | 🟢 | ❌ | 🔴 | Not Applicable |
| security.invalidate_api_key | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L33)</li></ul> | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L33)</li></ul> |
| security.invalidate_token | 🟢 | ❌ | 🔴 | Not Applicable |
| security.oidc_authenticate | 🟢 | ❌ | 🔴 | Not Applicable |
| security.oidc_logout | 🟢 | ❌ | 🔴 | Not Applicable |
| security.oidc_prepare_authentication | 🟢 | ❌ | 🔴 | Not Applicable |
| security.put_privileges | 🟢 | ❌ | 🔴 | Not Applicable |
| security.put_role | 🟢 | [✅](./tests/security/40_roles.yml#L29)</li></ul> | 🔴 | Not Applicable |
| security.put_role_mapping | 🟢 | ❌ | 🔴 | Not Applicable |
| security.put_user | 🟢 | [✅](./tests/security/40_roles.yml#L8)</li></ul> | 🔴 | Not Applicable |
| security.query_api_keys | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L24)</li></ul> | 🟢 | [✅](./tests/security/10_api_key_basic.yml#L24)</li></ul> |
| security.query_role | 🟢 | [✅](./tests/security/40_roles.yml#L55)</li></ul> | 🔴 | Not Applicable |
| security.query_user | 🟢 | ❌ | 🔴 | Not Applicable |
| security.saml_authenticate | 🟢 | ❌ | 🔴 | Not Applicable |
| security.saml_complete_logout | 🟢 | ❌ | 🔴 | Not Applicable |
| security.saml_invalidate | 🟢 | ❌ | 🔴 | Not Applicable |
| security.saml_logout | 🟢 | ❌ | 🔴 | Not Applicable |
| security.saml_prepare_authentication | 🟢 | ❌ | 🔴 | Not Applicable |
| security.saml_service_provider_metadata | 🟢 | ❌ | 🔴 | Not Applicable |
| security.suggest_user_profiles | 🟢 | ❌ | 🔴 | Not Applicable |
| security.update_api_key | 🟢 | ❌ | 🟢 | ❌ |
| security.update_cross_cluster_api_key | 🟢 | ❌ | 🔴 | Not Applicable |
| security.update_settings | 🟢 | ❌ | 🔴 | Not Applicable |
| security.update_user_profile_data | 🟢 | ❌ | 🔴 | Not Applicable |
| simulate.ingest | 🟢 | ❌ | 🔴 | Not Applicable |
| slm.delete_lifecycle | 🟢 | ❌ | 🔴 | Not Applicable |
| slm.execute_lifecycle | 🟢 | ❌ | 🔴 | Not Applicable |
| slm.execute_retention | 🟢 | ❌ | 🔴 | Not Applicable |
| slm.get_lifecycle | 🟢 | ❌ | 🔴 | Not Applicable |
| slm.get_stats | 🟢 | ❌ | 🔴 | Not Applicable |
| slm.get_status | 🟢 | ❌ | 🔴 | Not Applicable |
| slm.put_lifecycle | 🟢 | ❌ | 🔴 | Not Applicable |
| slm.start | 🟢 | ❌ | 🔴 | Not Applicable |
| slm.stop | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.cleanup_repository | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.clone | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.create | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.create_repository | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.delete | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.delete_repository | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.get | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.get_repository | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.repository_analyze | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.restore | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.status | 🟢 | ❌ | 🔴 | Not Applicable |
| snapshot.verify_repository | 🟢 | ❌ | 🔴 | Not Applicable |
| sql.clear_cursor | 🟢 | [✅](./tests/sql/10_basic.yml#L37)</li></ul> | 🟢 | [✅](./tests/sql/10_basic.yml#L37)</li></ul> |
| sql.delete_async | 🟢 | [✅](./tests/sql/10_basic.yml#L59)</li></ul> | 🟢 | [✅](./tests/sql/10_basic.yml#L59)</li></ul> |
| sql.get_async | 🟢 | [✅](./tests/sql/10_basic.yml#L56)</li></ul> | 🟢 | [✅](./tests/sql/10_basic.yml#L56)</li></ul> |
| sql.get_async_status | 🟢 | [✅](./tests/sql/10_basic.yml#L52)</li></ul> | 🟢 | [✅](./tests/sql/10_basic.yml#L52)</li></ul> |
| sql.query | 🟢 | [✅](./tests/sql/10_basic.yml#L26)</li></ul> | 🟢 | [✅](./tests/sql/10_basic.yml#L26)</li></ul> |
| sql.translate | 🟢 | [✅](./tests/sql/10_basic.yml#L33)</li></ul> | 🟢 | [✅](./tests/sql/10_basic.yml#L33)</li></ul> |
| ssl.certificates | 🟢 | ❌ | 🔴 | Not Applicable |
| synonyms.delete_synonym | 🟢 | [✅](./tests/synonyms/10_basic.yml#L44)</li></ul> | 🟢 | [✅](./tests/synonyms/10_basic.yml#L44)</li></ul> |
| synonyms.delete_synonym_rule | 🟢 | [✅](./tests/synonyms/10_basic.yml#L39)</li></ul> | 🟢 | [✅](./tests/synonyms/10_basic.yml#L39)</li></ul> |
| synonyms.get_synonym | 🟢 | [✅](./tests/synonyms/10_basic.yml#L21)</li></ul> | 🟢 | [✅](./tests/synonyms/10_basic.yml#L21)</li></ul> |
| synonyms.get_synonym_rule | 🟢 | [✅](./tests/synonyms/10_basic.yml#L31)</li></ul> | 🟢 | [✅](./tests/synonyms/10_basic.yml#L31)</li></ul> |
| synonyms.get_synonyms_sets | 🟢 | [✅](./tests/synonyms/10_basic.yml#L36)</li></ul> | 🟢 | [✅](./tests/synonyms/10_basic.yml#L36)</li></ul> |
| synonyms.put_synonym | 🟢 | [✅](./tests/synonyms/10_basic.yml#L16)</li></ul> | 🟢 | [✅](./tests/synonyms/10_basic.yml#L16)</li></ul> |
| synonyms.put_synonym_rule | 🟢 | [✅](./tests/synonyms/10_basic.yml#L25)</li></ul> | 🟢 | [✅](./tests/synonyms/10_basic.yml#L25)</li></ul> |
| tasks.cancel | 🟢 | ❌ | 🔴 | Not Applicable |
| tasks.get | 🟢 | [✅](./tests/tasks_get.yml#L6)</li></ul> | 🟢 | ❌ |
| tasks.list | 🟢 | ❌ | 🔴 | Not Applicable |
| terms_enum | 🟢 | [✅](./tests/terms_enum/10_basic.yml#L21)</li></ul> | 🟢 | [✅](./tests/terms_enum/10_basic.yml#L21)</li></ul> |
| termvectors | 🟢 | [✅](./tests/termvectors/10_basic.yml#L24)</li></ul> | 🟢 | [✅](./tests/termvectors/10_basic.yml#L24)</li></ul> |
| text_structure.find_field_structure | 🟢 | ❌ | 🔴 | Not Applicable |
| text_structure.find_message_structure | 🟢 | ❌ | 🔴 | Not Applicable |
| text_structure.find_structure | 🟢 | ❌ | 🔴 | Not Applicable |
| text_structure.test_grok_pattern | 🟢 | ❌ | 🔴 | Not Applicable |
| transform.delete_transform | 🟢 | [✅](./tests/cat/transform.yml#L28)</li></ul> | 🟢 | [✅](./tests/cat/transform.yml#L28)</li></ul> |
| transform.get_node_stats | 🟢 | ❌ | 🔴 | Not Applicable |
| transform.get_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L40)</li></ul> | 🟢 | [✅](./tests/transform/10_basic.yml#L40)</li></ul> |
| transform.get_transform_stats | 🟢 | [✅](./tests/transform/10_basic.yml#L43)</li></ul> | 🟢 | [✅](./tests/transform/10_basic.yml#L43)</li></ul> |
| transform.preview_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L46)</li></ul> | 🟢 | [✅](./tests/transform/10_basic.yml#L46)</li></ul> |
| transform.put_transform | 🟢 | [✅](./tests/cat/transform.yml#L12)</li></ul> | 🟢 | [✅](./tests/cat/transform.yml#L12)</li></ul> |
| transform.reset_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L58)</li></ul> | 🟢 | [✅](./tests/transform/10_basic.yml#L58)</li></ul> |
| transform.schedule_now_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L52)</li></ul> | 🟢 | [✅](./tests/transform/10_basic.yml#L52)</li></ul> |
| transform.start_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L49)</li></ul> | 🟢 | [✅](./tests/transform/10_basic.yml#L49)</li></ul> |
| transform.stop_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L55)</li></ul> | 🟢 | [✅](./tests/transform/10_basic.yml#L55)</li></ul> |
| transform.update_transform | 🟢 | [✅](./tests/transform/10_basic.yml#L35)</li></ul> | 🟢 | [✅](./tests/transform/10_basic.yml#L35)</li></ul> |
| transform.upgrade_transforms | 🟢 | ❌ | 🔴 | Not Applicable |
| update | 🟢 | [✅](./tests/update/10_partial_update.yml#L18)</li></ul> | 🟢 | [✅](./tests/update/10_partial_update.yml#L18)</li></ul> |
| update_by_query | 🟢 | [✅](./tests/update_by_query/10_basic.yml#L21)</li></ul> | 🟢 | [✅](./tests/update_by_query/10_basic.yml#L21)</li></ul> |
| update_by_query_rethrottle | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.ack_watch | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.activate_watch | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.deactivate_watch | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.delete_watch | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.execute_watch | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.get_settings | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.get_watch | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.put_watch | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.query_watches | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.start | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.stats | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.stop | 🟢 | ❌ | 🔴 | Not Applicable |
| watcher.update_settings | 🟢 | ❌ | 🔴 | Not Applicable |
| xpack.info | 🟢 | [✅](./tests/xpack_info.yml#L8)</li></ul> | 🔴 | Not Applicable |
| xpack.usage | 🟢 | [✅](./tests/entsearch/10_basic.yml#L16)</li></ul> | 🔴 | Not Applicable |

## APIs in JSON spec and not elasticsearch-specification
capabilities, connector.secret_delete, connector.secret_get, connector.secret_post, connector.secret_put, fleet.delete_secret, fleet.get_secret, fleet.post_secret, ml.validate, ml.validate_detector, profiling.flamegraph, profiling.stacktraces, profiling.status, profiling.topn_functions
## Internal APIs (Not tracked)
`_internal.delete_desired_balance`, `_internal.delete_desired_nodes`, `_internal.get_desired_balance`, `_internal.get_desired_nodes`, `_internal.prevalidate_node_removal`, `_internal.update_desired_nodes`, `autoscaling.delete_autoscaling_policy`, `autoscaling.get_autoscaling_capacity`, `autoscaling.get_autoscaling_policy`, `autoscaling.put_autoscaling_policy`, `capabilities`, `connector.secret_delete`, `connector.secret_get`, `connector.secret_post`, `connector.secret_put`, `fleet.delete_secret`, `fleet.get_secret`, `fleet.post_secret`, `ml.validate`, `ml.validate_detector`, `profiling.flamegraph`, `profiling.stacktraces`, `profiling.status`, `profiling.topn_functions`, `shutdown.delete_node`, `shutdown.get_node`, `shutdown.put_node`, `_common`
## Endpoints in stack JSON spec

`async_search.delete`, `async_search.get`, `async_search.status`, `async_search.submit`, `bulk`, `capabilities`, `cat.aliases`, `cat.allocation`, `cat.component_templates`, `cat.count`, `cat.fielddata`, `cat.health`, `cat.help`, `cat.indices`, `cat.master`, `cat.ml_data_frame_analytics`, `cat.ml_datafeeds`, `cat.ml_jobs`, `cat.ml_trained_models`, `cat.nodeattrs`, `cat.nodes`, `cat.pending_tasks`, `cat.plugins`, `cat.recovery`, `cat.repositories`, `cat.segments`, `cat.shards`, `cat.snapshots`, `cat.tasks`, `cat.templates`, `cat.thread_pool`, `cat.transforms`, `ccr.delete_auto_follow_pattern`, `ccr.follow`, `ccr.follow_info`, `ccr.follow_stats`, `ccr.forget_follower`, `ccr.get_auto_follow_pattern`, `ccr.pause_auto_follow_pattern`, `ccr.pause_follow`, `ccr.put_auto_follow_pattern`, `ccr.resume_auto_follow_pattern`, `ccr.resume_follow`, `ccr.stats`, `ccr.unfollow`, `clear_scroll`, `close_point_in_time`, `cluster.allocation_explain`, `cluster.delete_component_template`, `cluster.delete_voting_config_exclusions`, `cluster.exists_component_template`, `cluster.get_component_template`, `cluster.get_settings`, `cluster.health`, `cluster.info`, `cluster.pending_tasks`, `cluster.post_voting_config_exclusions`, `cluster.put_component_template`, `cluster.put_settings`, `cluster.remote_info`, `cluster.reroute`, `cluster.state`, `cluster.stats`, `connector.check_in`, `connector.delete`, `connector.get`, `connector.last_sync`, `connector.list`, `connector.post`, `connector.put`, `connector.secret_delete`, `connector.secret_get`, `connector.secret_post`, `connector.secret_put`, `connector.sync_job_cancel`, `connector.sync_job_check_in`, `connector.sync_job_claim`, `connector.sync_job_delete`, `connector.sync_job_error`, `connector.sync_job_get`, `connector.sync_job_list`, `connector.sync_job_post`, `connector.sync_job_update_stats`, `connector.update_active_filtering`, `connector.update_api_key_id`, `connector.update_configuration`, `connector.update_error`, `connector.update_features`, `connector.update_filtering`, `connector.update_filtering_validation`, `connector.update_index_name`, `connector.update_name`, `connector.update_native`, `connector.update_pipeline`, `connector.update_scheduling`, `connector.update_service_type`, `connector.update_status`, `count`, `create`, `dangling_indices.delete_dangling_index`, `dangling_indices.import_dangling_index`, `dangling_indices.list_dangling_indices`, `delete`, `delete_by_query`, `delete_by_query_rethrottle`, `delete_script`, `enrich.delete_policy`, `enrich.execute_policy`, `enrich.get_policy`, `enrich.put_policy`, `enrich.stats`, `eql.delete`, `eql.get`, `eql.get_status`, `eql.search`, `esql.async_query`, `esql.async_query_get`, `esql.query`, `exists`, `exists_source`, `explain`, `features.get_features`, `features.reset_features`, `field_caps`, `fleet.delete_secret`, `fleet.get_secret`, `fleet.global_checkpoints`, `fleet.msearch`, `fleet.post_secret`, `fleet.search`, `get`, `get_script`, `get_script_context`, `get_script_languages`, `get_source`, `graph.explore`, `health_report`, `ilm.delete_lifecycle`, `ilm.explain_lifecycle`, `ilm.get_lifecycle`, `ilm.get_status`, `ilm.migrate_to_data_tiers`, `ilm.move_to_step`, `ilm.put_lifecycle`, `ilm.remove_policy`, `ilm.retry`, `ilm.start`, `ilm.stop`, `index`, `indices.add_block`, `indices.analyze`, `indices.clear_cache`, `indices.clone`, `indices.close`, `indices.create`, `indices.create_data_stream`, `indices.data_streams_stats`, `indices.delete`, `indices.delete_alias`, `indices.delete_data_lifecycle`, `indices.delete_data_stream`, `indices.delete_index_template`, `indices.delete_template`, `indices.disk_usage`, `indices.downsample`, `indices.exists`, `indices.exists_alias`, `indices.exists_index_template`, `indices.exists_template`, `indices.explain_data_lifecycle`, `indices.field_usage_stats`, `indices.flush`, `indices.forcemerge`, `indices.get`, `indices.get_alias`, `indices.get_data_lifecycle`, `indices.get_data_stream`, `indices.get_field_mapping`, `indices.get_index_template`, `indices.get_mapping`, `indices.get_settings`, `indices.get_template`, `indices.migrate_to_data_stream`, `indices.modify_data_stream`, `indices.open`, `indices.promote_data_stream`, `indices.put_alias`, `indices.put_data_lifecycle`, `indices.put_index_template`, `indices.put_mapping`, `indices.put_settings`, `indices.put_template`, `indices.recovery`, `indices.refresh`, `indices.reload_search_analyzers`, `indices.resolve_cluster`, `indices.resolve_index`, `indices.rollover`, `indices.segments`, `indices.shard_stores`, `indices.shrink`, `indices.simulate_index_template`, `indices.simulate_template`, `indices.split`, `indices.stats`, `indices.unfreeze`, `indices.update_aliases`, `indices.validate_query`, `inference.delete`, `inference.get`, `inference.inference`, `inference.put`, `info`, `ingest.delete_geoip_database`, `ingest.delete_pipeline`, `ingest.geo_ip_stats`, `ingest.get_geoip_database`, `ingest.get_pipeline`, `ingest.processor_grok`, `ingest.put_geoip_database`, `ingest.put_pipeline`, `ingest.simulate`, `knn_search`, `license.delete`, `license.get`, `license.get_basic_status`, `license.get_trial_status`, `license.post`, `license.post_start_basic`, `license.post_start_trial`, `logstash.delete_pipeline`, `logstash.get_pipeline`, `logstash.put_pipeline`, `mget`, `migration.deprecations`, `migration.get_feature_upgrade_status`, `migration.post_feature_upgrade`, `ml.clear_trained_model_deployment_cache`, `ml.close_job`, `ml.delete_calendar`, `ml.delete_calendar_event`, `ml.delete_calendar_job`, `ml.delete_data_frame_analytics`, `ml.delete_datafeed`, `ml.delete_expired_data`, `ml.delete_filter`, `ml.delete_forecast`, `ml.delete_job`, `ml.delete_model_snapshot`, `ml.delete_trained_model`, `ml.delete_trained_model_alias`, `ml.estimate_model_memory`, `ml.evaluate_data_frame`, `ml.explain_data_frame_analytics`, `ml.flush_job`, `ml.forecast`, `ml.get_buckets`, `ml.get_calendar_events`, `ml.get_calendars`, `ml.get_categories`, `ml.get_data_frame_analytics`, `ml.get_data_frame_analytics_stats`, `ml.get_datafeed_stats`, `ml.get_datafeeds`, `ml.get_filters`, `ml.get_influencers`, `ml.get_job_stats`, `ml.get_jobs`, `ml.get_memory_stats`, `ml.get_model_snapshot_upgrade_stats`, `ml.get_model_snapshots`, `ml.get_overall_buckets`, `ml.get_records`, `ml.get_trained_models`, `ml.get_trained_models_stats`, `ml.infer_trained_model`, `ml.info`, `ml.open_job`, `ml.post_calendar_events`, `ml.post_data`, `ml.preview_data_frame_analytics`, `ml.preview_datafeed`, `ml.put_calendar`, `ml.put_calendar_job`, `ml.put_data_frame_analytics`, `ml.put_datafeed`, `ml.put_filter`, `ml.put_job`, `ml.put_trained_model`, `ml.put_trained_model_alias`, `ml.put_trained_model_definition_part`, `ml.put_trained_model_vocabulary`, `ml.reset_job`, `ml.revert_model_snapshot`, `ml.set_upgrade_mode`, `ml.start_data_frame_analytics`, `ml.start_datafeed`, `ml.start_trained_model_deployment`, `ml.stop_data_frame_analytics`, `ml.stop_datafeed`, `ml.stop_trained_model_deployment`, `ml.update_data_frame_analytics`, `ml.update_datafeed`, `ml.update_filter`, `ml.update_job`, `ml.update_model_snapshot`, `ml.update_trained_model_deployment`, `ml.upgrade_job_snapshot`, `ml.validate`, `ml.validate_detector`, `monitoring.bulk`, `msearch`, `msearch_template`, `mtermvectors`, `nodes.clear_repositories_metering_archive`, `nodes.get_repositories_metering_info`, `nodes.hot_threads`, `nodes.info`, `nodes.reload_secure_settings`, `nodes.stats`, `nodes.usage`, `open_point_in_time`, `ping`, `profiling.flamegraph`, `profiling.stacktraces`, `profiling.status`, `profiling.topn_functions`, `put_script`, `query_rules.delete_rule`, `query_rules.delete_ruleset`, `query_rules.get_rule`, `query_rules.get_ruleset`, `query_rules.list_rulesets`, `query_rules.put_rule`, `query_rules.put_ruleset`, `rank_eval`, `reindex`, `reindex_rethrottle`, `render_search_template`, `rollup.delete_job`, `rollup.get_jobs`, `rollup.get_rollup_caps`, `rollup.get_rollup_index_caps`, `rollup.put_job`, `rollup.rollup_search`, `rollup.start_job`, `rollup.stop_job`, `scripts_painless_execute`, `scroll`, `search`, `search_application.delete`, `search_application.delete_behavioral_analytics`, `search_application.get`, `search_application.get_behavioral_analytics`, `search_application.list`, `search_application.post_behavioral_analytics_event`, `search_application.put`, `search_application.put_behavioral_analytics`, `search_application.render_query`, `search_application.search`, `search_mvt`, `search_shards`, `search_template`, `searchable_snapshots.cache_stats`, `searchable_snapshots.clear_cache`, `searchable_snapshots.mount`, `searchable_snapshots.stats`, `security.activate_user_profile`, `security.authenticate`, `security.bulk_delete_role`, `security.bulk_put_role`, `security.bulk_update_api_keys`, `security.change_password`, `security.clear_api_key_cache`, `security.clear_cached_privileges`, `security.clear_cached_realms`, `security.clear_cached_roles`, `security.clear_cached_service_tokens`, `security.create_api_key`, `security.create_cross_cluster_api_key`, `security.create_service_token`, `security.delete_privileges`, `security.delete_role`, `security.delete_role_mapping`, `security.delete_service_token`, `security.delete_user`, `security.disable_user`, `security.disable_user_profile`, `security.enable_user`, `security.enable_user_profile`, `security.enroll_kibana`, `security.enroll_node`, `security.get_api_key`, `security.get_builtin_privileges`, `security.get_privileges`, `security.get_role`, `security.get_role_mapping`, `security.get_service_accounts`, `security.get_service_credentials`, `security.get_settings`, `security.get_token`, `security.get_user`, `security.get_user_privileges`, `security.get_user_profile`, `security.grant_api_key`, `security.has_privileges`, `security.has_privileges_user_profile`, `security.invalidate_api_key`, `security.invalidate_token`, `security.oidc_authenticate`, `security.oidc_logout`, `security.oidc_prepare_authentication`, `security.put_privileges`, `security.put_role`, `security.put_role_mapping`, `security.put_user`, `security.query_api_keys`, `security.query_role`, `security.query_user`, `security.saml_authenticate`, `security.saml_complete_logout`, `security.saml_invalidate`, `security.saml_logout`, `security.saml_prepare_authentication`, `security.saml_service_provider_metadata`, `security.suggest_user_profiles`, `security.update_api_key`, `security.update_cross_cluster_api_key`, `security.update_settings`, `security.update_user_profile_data`, `simulate.ingest`, `slm.delete_lifecycle`, `slm.execute_lifecycle`, `slm.execute_retention`, `slm.get_lifecycle`, `slm.get_stats`, `slm.get_status`, `slm.put_lifecycle`, `slm.start`, `slm.stop`, `snapshot.cleanup_repository`, `snapshot.clone`, `snapshot.create`, `snapshot.create_repository`, `snapshot.delete`, `snapshot.delete_repository`, `snapshot.get`, `snapshot.get_repository`, `snapshot.repository_analyze`, `snapshot.restore`, `snapshot.status`, `snapshot.verify_repository`, `sql.clear_cursor`, `sql.delete_async`, `sql.get_async`, `sql.get_async_status`, `sql.query`, `sql.translate`, `ssl.certificates`, `synonyms.delete_synonym`, `synonyms.delete_synonym_rule`, `synonyms.get_synonym`, `synonyms.get_synonym_rule`, `synonyms.get_synonyms_sets`, `synonyms.put_synonym`, `synonyms.put_synonym_rule`, `tasks.cancel`, `tasks.get`, `tasks.list`, `terms_enum`, `termvectors`, `text_structure.find_field_structure`, `text_structure.find_message_structure`, `text_structure.find_structure`, `text_structure.test_grok_pattern`, `transform.delete_transform`, `transform.get_node_stats`, `transform.get_transform`, `transform.get_transform_stats`, `transform.preview_transform`, `transform.put_transform`, `transform.reset_transform`, `transform.schedule_now_transform`, `transform.start_transform`, `transform.stop_transform`, `transform.update_transform`, `transform.upgrade_transforms`, `update`, `update_by_query`, `update_by_query_rethrottle`, `watcher.ack_watch`, `watcher.activate_watch`, `watcher.deactivate_watch`, `watcher.delete_watch`, `watcher.execute_watch`, `watcher.get_settings`, `watcher.get_watch`, `watcher.put_watch`, `watcher.query_watches`, `watcher.start`, `watcher.stats`, `watcher.stop`, `watcher.update_settings`, `xpack.info`, `xpack.usage`