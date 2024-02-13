# Tests report

* Endpoints in JSON spec: 494
* Endpoints in elasticsearch-specification: 456
* Endpoints in Serverless: 208
* [Tested](#tested): 198
* [Untested](#untested): 296
* Coverage: ![](https://geps.dev/progress/40)

## Tested


- [x] [async_search.delete](./tests/async_search/10_basic.yml)

- [x] [async_search.get](./tests/async_search/10_basic.yml)

- [x] [async_search.status](./tests/async_search/10_basic.yml)

- [x] [async_search.submit](./tests/async_search/10_basic.yml)

- [x] [bulk](./tests/bulk/10_basic.yml)

- [x] [cat.aliases](./tests/cat/aliases.yml)

- [x] [cat.component_templates](./tests/cat/component_templates.yml)

- [x] [cat.count](./tests/cat/count.yml)

- [x] [cat.help](./tests/cat/help.yml)

- [x] [cat.indices](./tests/cat/indices.yml)

- [x] [cat.ml_data_frame_analytics](./tests/cat/ml.yml)

- [x] [cat.ml_datafeeds](./tests/cat/ml.yml)

- [x] [cat.ml_jobs](./tests/cat/ml.yml)

- [x] [cat.ml_trained_models](./tests/cat/ml.yml)

- [x] [cat.transforms](./tests/cat/transform.yml)

- [x] [clear_scroll](./tests/scroll/10_basic.yml)

- [x] [close_point_in_time](./tests/point_in_time/10_basic.yml)

- [x] [cluster.delete_component_template](./tests/cluster/component_templates.yml)

- [x] [cluster.exists_component_template](./tests/cluster/component_templates.yml)

- [x] [cluster.get_component_template](./tests/cluster/component_templates.yml)

- [x] [cluster.info](./tests/cluster/cluster_info.yml)

- [x] [cluster.put_component_template](./tests/cluster/component_templates.yml)

- [x] [count](./tests/async_search/10_basic.yml)

- [x] [create](./tests/cat/aliases.yml)

- [x] [delete](./tests/async_search/10_basic.yml)

- [x] [delete_by_query](./tests/delete_by_query/10_basic.yml)

- [x] [delete_script](./tests/script/10_basic.yml)

- [x] [enrich.delete_policy](./tests/enrich/10_basic.yml)

- [x] [enrich.execute_policy](./tests/enrich/10_basic.yml)

- [x] [enrich.get_policy](./tests/enrich/10_basic.yml)

- [x] [enrich.put_policy](./tests/enrich/10_basic.yml)

- [x] [enrich.stats](./tests/enrich/10_basic.yml)

- [x] [eql.delete](./tests/eql/10_basic.yml)

- [x] [eql.get](./tests/eql/10_basic.yml)

- [x] [eql.get_status](./tests/eql/10_basic.yml)

- [x] [eql.search](./tests/eql/10_basic.yml)

- [x] [exists](./tests/cluster/component_templates.yml)

- [x] [exists_source](./tests/exists_source/10_basic.yml)

- [x] [explain](./tests/explain/10_basic.yml)

- [x] [field_caps](./tests/field_caps/10_basic.yml)

- [x] [get](./tests/async_search/10_basic.yml)

- [x] [get_script](./tests/script/10_basic.yml)

- [x] [get_source](./tests/get_source/10_basic.yml)

- [x] [graph.explore](./tests/graph/explore.yml)

- [x] [index](./tests/async_search/10_basic.yml)

- [x] [indices.add_block](./tests/indices/block.yml)

- [x] [indices.analyze](./tests/indices/analyze.yml)

- [x] [indices.create](./tests/cat/aliases.yml)

- [x] [indices.create_data_stream](./tests/indices/data_streams.yml)

- [x] [indices.data_streams_stats](./tests/indices/data_streams.yml)

- [x] [indices.delete](./tests/async_search/10_basic.yml)

- [x] [indices.delete_alias](./tests/indices/alias.yml)

- [x] [indices.delete_data_lifecycle](./tests/indices/data_lifecycle.yml)

- [x] [indices.delete_data_stream](./tests/indices/data_streams.yml)

- [x] [indices.delete_index_template](./tests/indices/data_streams.yml)

- [x] [indices.exists](./tests/indices/alias.yml)

- [x] [indices.exists_alias](./tests/indices/alias.yml)

- [x] [indices.exists_index_template](./tests/indices/index_template.yml)

- [x] [indices.explain_data_lifecycle](./tests/indices/data_lifecycle.yml)

- [x] [indices.get](./tests/indices/alias.yml)

- [x] [indices.get_alias](./tests/indices/alias.yml)

- [x] [indices.get_data_lifecycle](./tests/indices/data_lifecycle.yml)

- [x] [indices.get_data_stream](./tests/indices/data_streams.yml)

- [x] [indices.get_index_template](./tests/indices/index_template.yml)

- [x] [indices.get_mapping](./tests/indices/mapping.yml)

- [x] [indices.get_settings](./tests/indices/settings.yml)

- [x] [indices.migrate_to_data_stream](./tests/indices/migrate_modify_data_stream.yml)

- [x] [indices.modify_data_stream](./tests/indices/migrate_modify_data_stream.yml)

- [x] [indices.put_alias](./tests/cat/aliases.yml)

- [x] [indices.put_data_lifecycle](./tests/indices/data_lifecycle.yml)

- [x] [indices.put_index_template](./tests/indices/data_streams.yml)

- [x] [indices.put_mapping](./tests/indices/mapping.yml)

- [x] [indices.put_settings](./tests/indices/settings.yml)

- [x] [indices.refresh](./tests/graph/explore.yml)

- [x] [indices.resolve_index](./tests/indices/resolve.yml)

- [x] [indices.rollover](./tests/indices/rollover.yml)

- [x] [indices.simulate_index_template](./tests/indices/simulate_template.yml)

- [x] [indices.simulate_template](./tests/indices/simulate_index_template.yml)

- [x] [indices.update_aliases](./tests/indices/alias.yml)

- [x] [indices.validate_query](./tests/validate_query/10_basic.yml)

- [x] [info](./tests/cluster/cluster_info.yml)

- [x] [ingest.delete_pipeline](./tests/ingest/10_basic.yml)

- [x] [ingest.get_pipeline](./tests/ingest/10_basic.yml)

- [x] [ingest.processor_grok](./tests/ingest/10_basic.yml)

- [x] [ingest.put_pipeline](./tests/ingest/10_basic.yml)

- [x] [ingest.simulate](./tests/ingest/10_basic.yml)

- [x] [license.get](./tests/license.yml)

- [x] [logstash.delete_pipeline](./tests/logstash/10_basic.yml)

- [x] [logstash.get_pipeline](./tests/logstash/10_basic.yml)

- [x] [logstash.put_pipeline](./tests/logstash/10_basic.yml)

- [x] [mget](./tests/mget.yml)

- [x] [ml.close_job](./tests/machine_learning/jobs_crud.yml)

- [x] [ml.delete_calendar](./tests/machine_learning/calendar_crud.yml)

- [x] [ml.delete_calendar_event](./tests/machine_learning/calendar_events_crud.yml)

- [x] [ml.delete_calendar_job](./tests/machine_learning/calendar_job.yml)

- [x] [ml.delete_data_frame_analytics](./tests/machine_learning/data_frame_analytics.yml)

- [x] [ml.delete_datafeed](./tests/machine_learning/datafeed_crud.yml)

- [x] [ml.delete_filter](./tests/machine_learning/filter_crud.yml)

- [x] [ml.delete_job](./tests/machine_learning/calendar_crud.yml)

- [x] [ml.delete_trained_model](./tests/machine_learning/trained_model.yml)

- [x] [ml.delete_trained_model_alias](./tests/machine_learning/trained_model_aliases.yml)

- [x] [ml.estimate_model_memory](./tests/machine_learning/estimate_model_memory.yml)

- [x] [ml.evaluate_data_frame](./tests/machine_learning/data_frame_evaluate.yml)

- [x] [ml.flush_job](./tests/machine_learning/jobs_crud.yml)

- [x] [ml.get_calendar_events](./tests/machine_learning/calendar_events_crud.yml)

- [x] [ml.get_calendars](./tests/machine_learning/calendar_crud.yml)

- [x] [ml.get_data_frame_analytics](./tests/machine_learning/data_frame_analytics.yml)

- [x] [ml.get_data_frame_analytics_stats](./tests/machine_learning/data_frame_analytics.yml)

- [x] [ml.get_datafeed_stats](./tests/machine_learning/datafeed_crud.yml)

- [x] [ml.get_datafeeds](./tests/machine_learning/datafeed_crud.yml)

- [x] [ml.get_filters](./tests/machine_learning/filter_crud.yml)

- [x] [ml.get_job_stats](./tests/machine_learning/jobs_crud.yml)

- [x] [ml.get_jobs](./tests/machine_learning/jobs_crud.yml)

- [x] [ml.get_overall_buckets](./tests/machine_learning/get_overall_buckets.yml)

- [x] [ml.get_trained_models](./tests/machine_learning/trained_model.yml)

- [x] [ml.get_trained_models_stats](./tests/machine_learning/trained_model_more.yml)

- [x] [ml.open_job](./tests/machine_learning/jobs_crud.yml)

- [x] [ml.post_calendar_events](./tests/machine_learning/calendar_events_crud.yml)

- [x] [ml.preview_data_frame_analytics](./tests/machine_learning/data_frame_analytics.yml)

- [x] [ml.preview_datafeed](./tests/machine_learning/preview_datafeed.yml)

- [x] [ml.put_calendar](./tests/machine_learning/calendar_crud.yml)

- [x] [ml.put_calendar_job](./tests/machine_learning/calendar_job.yml)

- [x] [ml.put_data_frame_analytics](./tests/machine_learning/data_frame_analytics.yml)

- [x] [ml.put_datafeed](./tests/machine_learning/datafeed_crud.yml)

- [x] [ml.put_filter](./tests/machine_learning/filter_crud.yml)

- [x] [ml.put_job](./tests/machine_learning/calendar_crud.yml)

- [x] [ml.put_trained_model](./tests/machine_learning/trained_model.yml)

- [x] [ml.put_trained_model_alias](./tests/machine_learning/trained_model_aliases.yml)

- [x] [ml.put_trained_model_definition_part](./tests/machine_learning/trained_model_more.yml)

- [x] [ml.put_trained_model_vocabulary](./tests/machine_learning/trained_model_more.yml)

- [x] [ml.reset_job](./tests/machine_learning/jobs_reset.yml)

- [x] [ml.start_data_frame_analytics](./tests/machine_learning/data_frame_analytics.yml)

- [x] [ml.start_datafeed](./tests/machine_learning/start_stop_datafeed.yml)

- [x] [ml.start_trained_model_deployment](./tests/machine_learning/trained_model_more.yml)

- [x] [ml.stop_data_frame_analytics](./tests/machine_learning/data_frame_analytics.yml)

- [x] [ml.stop_datafeed](./tests/machine_learning/start_stop_datafeed.yml)

- [x] [ml.stop_trained_model_deployment](./tests/machine_learning/trained_model_more.yml)

- [x] [ml.update_data_frame_analytics](./tests/machine_learning/data_frame_analytics.yml)

- [x] [ml.update_datafeed](./tests/machine_learning/datafeed_crud.yml)

- [x] [ml.update_filter](./tests/machine_learning/filter_crud.yml)

- [x] [ml.update_job](./tests/machine_learning/jobs_crud.yml)

- [x] [msearch](./tests/msearch.yml)

- [x] [msearch_template](./tests/msearch_template.yml)

- [x] [mtermvectors](./tests/mtermvectors/10_basic.yml)

- [x] [open_point_in_time](./tests/point_in_time/10_basic.yml)

- [x] [ping](./tests/cluster/component_templates.yml)

- [x] [put_script](./tests/msearch_template.yml)

- [x] [query_ruleset.delete](./tests/query_ruleset/10_basic.yml)

- [x] [query_ruleset.get](./tests/query_ruleset/10_basic.yml)

- [x] [query_ruleset.list](./tests/query_ruleset/10_basic.yml)

- [x] [query_ruleset.put](./tests/query_ruleset/10_basic.yml)

- [x] [rank_eval](./tests/rank_eval.yml)

- [x] [reindex](./tests/reindex/10_basic.yml)

- [x] [render_search_template](./tests/search_template/10_basic.yml)

- [x] [scripts_painless_execute](./tests/script/10_basic.yml)

- [x] [scroll](./tests/machine_learning/datafeed_crud.yml)

- [x] [search](./tests/async_search/10_basic.yml)

- [x] [search_application.delete](./tests/search_application/10_basic.yml)

- [x] [search_application.delete_behavioral_analytics](./tests/search_application/20_behavioral_analytics.yml)

- [x] [search_application.get](./tests/search_application/10_basic.yml)

- [x] [search_application.get_behavioral_analytics](./tests/search_application/20_behavioral_analytics.yml)

- [x] [search_application.list](./tests/search_application/10_basic.yml)

- [x] [search_application.put](./tests/search_application/10_basic.yml)

- [x] [search_application.put_behavioral_analytics](./tests/search_application/20_behavioral_analytics.yml)

- [x] [search_mvt](./tests/search_mvt/10_basic.yml)

- [x] [search_template](./tests/msearch_template.yml)

- [x] [security.authenticate](./tests/security/20_authenticate.yml)

- [x] [security.create_api_key](./tests/security/10_api_key_basic.yml)

- [x] [security.get_api_key](./tests/security/10_api_key_basic.yml)

- [x] [security.has_privileges](./tests/security/30_has_privileges.yml)

- [x] [security.invalidate_api_key](./tests/security/10_api_key_basic.yml)

- [x] [security.query_api_keys](./tests/security/10_api_key_basic.yml)

- [x] [sql.clear_cursor](./tests/sql/10_basic.yml)

- [x] [sql.delete_async](./tests/sql/10_basic.yml)

- [x] [sql.get_async](./tests/sql/10_basic.yml)

- [x] [sql.get_async_status](./tests/sql/10_basic.yml)

- [x] [sql.query](./tests/sql/10_basic.yml)

- [x] [sql.translate](./tests/sql/10_basic.yml)

- [x] [synonyms.delete_synonym](./tests/synonyms/10_basic.yml)

- [x] [synonyms.delete_synonym_rule](./tests/synonyms/10_basic.yml)

- [x] [synonyms.get_synonym](./tests/synonyms/10_basic.yml)

- [x] [synonyms.get_synonym_rule](./tests/synonyms/10_basic.yml)

- [x] [synonyms.put_synonym](./tests/synonyms/10_basic.yml)

- [x] [synonyms.put_synonym_rule](./tests/synonyms/10_basic.yml)

- [x] [terms_enum](./tests/terms_enum/10_basic.yml)

- [x] [termvectors](./tests/mtermvectors/10_basic.yml)

- [x] [transform.delete_transform](./tests/cat/transform.yml)

- [x] [transform.get_transform](./tests/transform/10_basic.yml)

- [x] [transform.get_transform_stats](./tests/transform/10_basic.yml)

- [x] [transform.preview_transform](./tests/transform/10_basic.yml)

- [x] [transform.put_transform](./tests/cat/transform.yml)

- [x] [transform.reset_transform](./tests/transform/10_basic.yml)

- [x] [transform.schedule_now_transform](./tests/transform/10_basic.yml)

- [x] [transform.start_transform](./tests/transform/10_basic.yml)

- [x] [transform.stop_transform](./tests/transform/10_basic.yml)

- [x] [transform.update_transform](./tests/transform/10_basic.yml)

- [x] [update](./tests/indices/alias.yml)

- [x] [update_by_query](./tests/update_by_query/10_basic.yml)


## Untested


- [ ] autoscaling.delete_autoscaling_policy

- [ ] autoscaling.get_autoscaling_capacity

- [ ] autoscaling.get_autoscaling_policy

- [ ] autoscaling.put_autoscaling_policy

- [ ] cat.allocation

- [ ] cat.fielddata

- [ ] cat.health

- [ ] cat.master

- [ ] cat.nodeattrs

- [ ] cat.nodes

- [ ] cat.pending_tasks

- [ ] cat.plugins

- [ ] cat.recovery

- [ ] cat.repositories

- [ ] cat.segments

- [ ] cat.shards

- [ ] cat.snapshots

- [ ] cat.tasks

- [ ] cat.templates

- [ ] cat.thread_pool

- [ ] ccr.delete_auto_follow_pattern

- [ ] ccr.follow

- [ ] ccr.follow_info

- [ ] ccr.follow_stats

- [ ] ccr.forget_follower

- [ ] ccr.get_auto_follow_pattern

- [ ] ccr.pause_auto_follow_pattern

- [ ] ccr.pause_follow

- [ ] ccr.put_auto_follow_pattern

- [ ] ccr.resume_auto_follow_pattern

- [ ] ccr.resume_follow

- [ ] ccr.stats

- [ ] ccr.unfollow

- [ ] cluster.allocation_explain

- [ ] cluster.delete_voting_config_exclusions

- [ ] cluster.get_settings

- [ ] cluster.health

- [ ] cluster.pending_tasks

- [ ] cluster.post_voting_config_exclusions

- [ ] cluster.put_settings

- [ ] cluster.remote_info

- [ ] cluster.reroute

- [ ] cluster.state

- [ ] cluster.stats

- [ ] connector.check_in

- [ ] connector.delete

- [ ] connector.get

- [ ] connector.last_sync

- [ ] connector.list

- [ ] connector.post

- [ ] connector.put

- [ ] connector.update_api_key_id

- [ ] connector.update_configuration

- [ ] connector.update_error

- [ ] connector.update_filtering

- [ ] connector.update_index_name

- [ ] connector.update_name

- [ ] connector.update_native

- [ ] connector.update_pipeline

- [ ] connector.update_scheduling

- [ ] connector.update_service_type

- [ ] connector.update_status

- [ ] connector_secret.delete

- [ ] connector_secret.get

- [ ] connector_secret.post

- [ ] connector_secret.put

- [ ] connector_sync_job.cancel

- [ ] connector_sync_job.check_in

- [ ] connector_sync_job.delete

- [ ] connector_sync_job.error

- [ ] connector_sync_job.get

- [ ] connector_sync_job.list

- [ ] connector_sync_job.post

- [ ] connector_sync_job.update_stats

- [ ] dangling_indices.delete_dangling_index

- [ ] dangling_indices.import_dangling_index

- [ ] dangling_indices.list_dangling_indices

- [ ] delete_by_query_rethrottle

- [ ] esql.async_query

- [ ] esql.async_query_get

- [ ] esql.query

- [ ] features.get_features

- [ ] features.reset_features

- [ ] fleet.delete_secret

- [ ] fleet.get_secret

- [ ] fleet.global_checkpoints

- [ ] fleet.msearch

- [ ] fleet.post_secret

- [ ] fleet.search

- [ ] get_script_context

- [ ] get_script_languages

- [ ] health_report

- [ ] ilm.delete_lifecycle

- [ ] ilm.explain_lifecycle

- [ ] ilm.get_lifecycle

- [ ] ilm.get_status

- [ ] ilm.migrate_to_data_tiers

- [ ] ilm.move_to_step

- [ ] ilm.put_lifecycle

- [ ] ilm.remove_policy

- [ ] ilm.retry

- [ ] ilm.start

- [ ] ilm.stop

- [ ] indices.clear_cache

- [ ] indices.clone

- [ ] indices.close

- [ ] indices.delete_template

- [ ] indices.disk_usage

- [ ] indices.downsample

- [ ] indices.exists_template

- [ ] indices.field_usage_stats

- [ ] indices.flush

- [ ] indices.forcemerge

- [ ] indices.get_field_mapping

- [ ] indices.get_template

- [ ] indices.open

- [ ] indices.promote_data_stream

- [ ] indices.put_template

- [ ] indices.recovery

- [ ] indices.reload_search_analyzers

- [ ] indices.resolve_cluster

- [ ] indices.segments

- [ ] indices.shard_stores

- [ ] indices.shrink

- [ ] indices.split

- [ ] indices.stats

- [ ] indices.unfreeze

- [ ] inference.delete_model

- [ ] inference.get_model

- [ ] inference.inference

- [ ] inference.put_model

- [ ] ingest.geo_ip_stats

- [ ] knn_search

- [ ] license.delete

- [ ] license.get_basic_status

- [ ] license.get_trial_status

- [ ] license.post

- [ ] license.post_start_basic

- [ ] license.post_start_trial

- [ ] migration.deprecations

- [ ] migration.get_feature_upgrade_status

- [ ] migration.post_feature_upgrade

- [ ] ml.clear_trained_model_deployment_cache

- [ ] ml.delete_expired_data

- [ ] ml.delete_forecast

- [ ] ml.delete_model_snapshot

- [ ] ml.explain_data_frame_analytics

- [ ] ml.forecast

- [ ] ml.get_buckets

- [ ] ml.get_categories

- [ ] ml.get_influencers

- [ ] ml.get_memory_stats

- [ ] ml.get_model_snapshot_upgrade_stats

- [ ] ml.get_model_snapshots

- [ ] ml.get_records

- [ ] ml.infer_trained_model

- [ ] ml.info

- [ ] ml.post_data

- [ ] ml.revert_model_snapshot

- [ ] ml.set_upgrade_mode

- [ ] ml.update_model_snapshot

- [ ] ml.update_trained_model_deployment

- [ ] ml.upgrade_job_snapshot

- [ ] ml.validate

- [ ] ml.validate_detector

- [ ] monitoring.bulk

- [ ] nodes.clear_repositories_metering_archive

- [ ] nodes.get_repositories_metering_info

- [ ] nodes.hot_threads

- [ ] nodes.info

- [ ] nodes.reload_secure_settings

- [ ] nodes.stats

- [ ] nodes.usage

- [ ] profiling.flamegraph

- [ ] profiling.stacktraces

- [ ] profiling.status

- [ ] reindex_rethrottle

- [ ] rollup.delete_job

- [ ] rollup.get_jobs

- [ ] rollup.get_rollup_caps

- [ ] rollup.get_rollup_index_caps

- [ ] rollup.put_job

- [ ] rollup.rollup_search

- [ ] rollup.start_job

- [ ] rollup.stop_job

- [ ] search_application.post_behavioral_analytics_event

- [ ] search_application.render_query

- [ ] search_application.search

- [ ] search_shards

- [ ] searchable_snapshots.cache_stats

- [ ] searchable_snapshots.clear_cache

- [ ] searchable_snapshots.mount

- [ ] searchable_snapshots.stats

- [ ] security.activate_user_profile

- [ ] security.bulk_update_api_keys

- [ ] security.change_password

- [ ] security.clear_api_key_cache

- [ ] security.clear_cached_privileges

- [ ] security.clear_cached_realms

- [ ] security.clear_cached_roles

- [ ] security.clear_cached_service_tokens

- [ ] security.create_cross_cluster_api_key

- [ ] security.create_service_token

- [ ] security.delete_privileges

- [ ] security.delete_role

- [ ] security.delete_role_mapping

- [ ] security.delete_service_token

- [ ] security.delete_user

- [ ] security.disable_user

- [ ] security.disable_user_profile

- [ ] security.enable_user

- [ ] security.enable_user_profile

- [ ] security.enroll_kibana

- [ ] security.enroll_node

- [ ] security.get_builtin_privileges

- [ ] security.get_privileges

- [ ] security.get_role

- [ ] security.get_role_mapping

- [ ] security.get_service_accounts

- [ ] security.get_service_credentials

- [ ] security.get_settings

- [ ] security.get_token

- [ ] security.get_user

- [ ] security.get_user_privileges

- [ ] security.get_user_profile

- [ ] security.grant_api_key

- [ ] security.has_privileges_user_profile

- [ ] security.invalidate_token

- [ ] security.oidc_authenticate

- [ ] security.oidc_logout

- [ ] security.oidc_prepare_authentication

- [ ] security.put_privileges

- [ ] security.put_role

- [ ] security.put_role_mapping

- [ ] security.put_user

- [ ] security.query_user

- [ ] security.saml_authenticate

- [ ] security.saml_complete_logout

- [ ] security.saml_invalidate

- [ ] security.saml_logout

- [ ] security.saml_prepare_authentication

- [ ] security.saml_service_provider_metadata

- [ ] security.suggest_user_profiles

- [ ] security.update_api_key

- [ ] security.update_cross_cluster_api_key

- [ ] security.update_settings

- [ ] security.update_user_profile_data

- [ ] shutdown.delete_node

- [ ] shutdown.get_node

- [ ] shutdown.put_node

- [ ] simulate.ingest

- [ ] slm.delete_lifecycle

- [ ] slm.execute_lifecycle

- [ ] slm.execute_retention

- [ ] slm.get_lifecycle

- [ ] slm.get_stats

- [ ] slm.get_status

- [ ] slm.put_lifecycle

- [ ] slm.start

- [ ] slm.stop

- [ ] snapshot.cleanup_repository

- [ ] snapshot.clone

- [ ] snapshot.create

- [ ] snapshot.create_repository

- [ ] snapshot.delete

- [ ] snapshot.delete_repository

- [ ] snapshot.get

- [ ] snapshot.get_repository

- [ ] snapshot.repository_analyze

- [ ] snapshot.restore

- [ ] snapshot.status

- [ ] snapshot.verify_repository

- [ ] ssl.certificates

- [ ] synonyms.get_synonyms_sets

- [ ] tasks.cancel

- [ ] tasks.get

- [ ] tasks.list

- [ ] text_structure.find_structure

- [ ] text_structure.test_grok_pattern

- [ ] transform.upgrade_transforms

- [ ] update_by_query_rethrottle

- [ ] watcher.ack_watch

- [ ] watcher.activate_watch

- [ ] watcher.deactivate_watch

- [ ] watcher.delete_watch

- [ ] watcher.execute_watch

- [ ] watcher.get_settings

- [ ] watcher.get_watch

- [ ] watcher.put_watch

- [ ] watcher.query_watches

- [ ] watcher.start

- [ ] watcher.stats

- [ ] watcher.stop

- [ ] watcher.update_settings

- [ ] xpack.info

- [ ] xpack.usage

