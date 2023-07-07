[![Terraform](https://github.com/Snowflake-Labs/terraform-snowflake-snowalert-rbac/actions/workflows/terraform.yml/badge.svg)](https://github.com/Snowflake-Labs/terraform-snowflake-snowalert-rbac/actions/workflows/terraform.yml)

# _SnowAlert Database RBAC_
Terraform module to setup RBAC for SnowAlert in Snowflake.

## Required parameters
| Parameter| Description  |
| --- | --- |
|ingest_role|Role used for ingesting data.|
|alerting_role|Role used for sending alert.|
|modeling_role|Role used for updating or making change.|
|monitoring_role|Role used for monitoring tasks and resources.|


## Optional parameters
| Parameter| Description  |
| --- | --- |
|aws_region |AWS region. Default: `us-west-2`|
|snowalert_warehouse_name|SnowAlert warehouse name. Default:`SNOWALERT_WAREHOUSE`|
|snowalert_database_name|SnowAlert database name. Default: `SNOWALERT`|
|data_schema_name|SnowAlert data schema name. Default: `DATA`|
|rules_schema_name|SnowAlert rules schema name. Default: `RULES`|
|results_schema_name|SnowAlert results schema name. Default: `RESULTS`|
|monitoring_schema_name|SnowAlert monitoring schema name. Default: `MONITORING`|
|app_snowalert_role|SnowAlert service user name. Default `APP_SNOWALERT`|
|warehouse_external_roles|List of additional roles that need SnowAlert warehouse usage permissions. Default: `[]`|
|enable_multiple_grants|Allow Snowflake grants to be managed outside of this module.  Default: `true`|

