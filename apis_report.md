# Tests report

* Endpoints in JSON spec: 494
* Endpoints in elasticsearch-specification: 456
* Endpoints in Serverless: 208
* [Tested](#tested): 198
* [Untested](#untested): 296
* Coverage: ![](https://geps.dev/progress/40)

## Tested


- [x] async_search.delete

- [x] async_search.get

- [x] async_search.status

- [x] async_search.submit

- [x] bulk

- [x] cat.aliases

- [x] cat.component_templates

- [x] cat.count

- [x] cat.help

- [x] cat.indices

- [x] cat.ml_data_frame_analytics

- [x] cat.ml_datafeeds

- [x] cat.ml_jobs

- [x] cat.ml_trained_models

- [x] cat.transforms

- [x] clear_scroll

- [x] close_point_in_time

- [x] cluster.delete_component_template

- [x] cluster.exists_component_template

- [x] cluster.get_component_template

- [x] cluster.info

- [x] cluster.put_component_template

- [x] count

- [x] create

- [x] delete

- [x] delete_by_query

- [x] delete_script

- [x] enrich.delete_policy

- [x] enrich.execute_policy

- [x] enrich.get_policy

- [x] enrich.put_policy

- [x] enrich.stats

- [x] eql.delete

- [x] eql.get

- [x] eql.get_status

- [x] eql.search

- [x] exists

- [x] exists_source

- [x] explain

- [x] field_caps

- [x] get

- [x] get_script

- [x] get_source

- [x] graph.explore

- [x] index

- [x] indices.add_block

- [x] indices.analyze

- [x] indices.create

- [x] indices.create_data_stream

- [x] indices.data_streams_stats

- [x] indices.delete

- [x] indices.delete_alias

- [x] indices.delete_data_lifecycle

- [x] indices.delete_data_stream

- [x] indices.delete_index_template

- [x] indices.exists

- [x] indices.exists_alias

- [x] indices.exists_index_template

- [x] indices.explain_data_lifecycle

- [x] indices.get

- [x] indices.get_alias

- [x] indices.get_data_lifecycle

- [x] indices.get_data_stream

- [x] indices.get_index_template

- [x] indices.get_mapping

- [x] indices.get_settings

- [x] indices.migrate_to_data_stream

- [x] indices.modify_data_stream

- [x] indices.put_alias

- [x] indices.put_data_lifecycle

- [x] indices.put_index_template

- [x] indices.put_mapping

- [x] indices.put_settings

- [x] indices.refresh

- [x] indices.resolve_index

- [x] indices.rollover

- [x] indices.simulate_index_template

- [x] indices.simulate_template

- [x] indices.update_aliases

- [x] indices.validate_query

- [x] info

- [x] ingest.delete_pipeline

- [x] ingest.get_pipeline

- [x] ingest.processor_grok

- [x] ingest.put_pipeline

- [x] ingest.simulate

- [x] license.get

- [x] logstash.delete_pipeline

- [x] logstash.get_pipeline

- [x] logstash.put_pipeline

- [x] mget

- [x] ml.close_job

- [x] ml.delete_calendar

- [x] ml.delete_calendar_event

- [x] ml.delete_calendar_job

- [x] ml.delete_data_frame_analytics

- [x] ml.delete_datafeed

- [x] ml.delete_filter

- [x] ml.delete_job

- [x] ml.delete_trained_model

- [x] ml.delete_trained_model_alias

- [x] ml.estimate_model_memory

- [x] ml.evaluate_data_frame

- [x] ml.flush_job

- [x] ml.get_calendar_events

- [x] ml.get_calendars

- [x] ml.get_data_frame_analytics

- [x] ml.get_data_frame_analytics_stats

- [x] ml.get_datafeed_stats

- [x] ml.get_datafeeds

- [x] ml.get_filters

- [x] ml.get_job_stats

- [x] ml.get_jobs

- [x] ml.get_overall_buckets

- [x] ml.get_trained_models

- [x] ml.get_trained_models_stats

- [x] ml.open_job

- [x] ml.post_calendar_events

- [x] ml.preview_data_frame_analytics

- [x] ml.preview_datafeed

- [x] ml.put_calendar

- [x] ml.put_calendar_job

- [x] ml.put_data_frame_analytics

- [x] ml.put_datafeed

- [x] ml.put_filter

- [x] ml.put_job

- [x] ml.put_trained_model

- [x] ml.put_trained_model_alias

- [x] ml.put_trained_model_definition_part

- [x] ml.put_trained_model_vocabulary

- [x] ml.reset_job

- [x] ml.start_data_frame_analytics

- [x] ml.start_datafeed

- [x] ml.start_trained_model_deployment

- [x] ml.stop_data_frame_analytics

- [x] ml.stop_datafeed

- [x] ml.stop_trained_model_deployment

- [x] ml.update_data_frame_analytics

- [x] ml.update_datafeed

- [x] ml.update_filter

- [x] ml.update_job

- [x] msearch

- [x] msearch_template

- [x] mtermvectors

- [x] open_point_in_time

- [x] ping

- [x] put_script

- [x] query_ruleset.delete

- [x] query_ruleset.get

- [x] query_ruleset.list

- [x] query_ruleset.put

- [x] rank_eval

- [x] reindex

- [x] render_search_template

- [x] scripts_painless_execute

- [x] scroll

- [x] search

- [x] search_application.delete

- [x] search_application.delete_behavioral_analytics

- [x] search_application.get

- [x] search_application.get_behavioral_analytics

- [x] search_application.list

- [x] search_application.put

- [x] search_application.put_behavioral_analytics

- [x] search_mvt

- [x] search_template

- [x] security.authenticate

- [x] security.create_api_key

- [x] security.get_api_key

- [x] security.has_privileges

- [x] security.invalidate_api_key

- [x] security.query_api_keys

- [x] sql.clear_cursor

- [x] sql.delete_async

- [x] sql.get_async

- [x] sql.get_async_status

- [x] sql.query

- [x] sql.translate

- [x] synonyms.delete_synonym

- [x] synonyms.delete_synonym_rule

- [x] synonyms.get_synonym

- [x] synonyms.get_synonym_rule

- [x] synonyms.put_synonym

- [x] synonyms.put_synonym_rule

- [x] terms_enum

- [x] termvectors

- [x] transform.delete_transform

- [x] transform.get_transform

- [x] transform.get_transform_stats

- [x] transform.preview_transform

- [x] transform.put_transform

- [x] transform.reset_transform

- [x] transform.schedule_now_transform

- [x] transform.start_transform

- [x] transform.stop_transform

- [x] transform.update_transform

- [x] update

- [x] update_by_query


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

