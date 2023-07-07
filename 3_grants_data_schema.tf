resource "snowflake_schema_grant" "data_schema_grant_create_view" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE VIEW"
  roles = [
    var.alerting_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "data_schema_grant_create_function" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE FUNCTION"
  roles = [
    var.alerting_role,
    var.ingest_role,
    var.modeling_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "data_schema_grant_create_procedure" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE PROCEDURE"
  roles = [
    var.alerting_role,
    var.ingest_role,
    var.modeling_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "data_schema_grant_create_stage" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE STAGE"
  roles = [
    var.ingest_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "data_schema_grant_create_pipe" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE PIPE"
  roles = [
    var.ingest_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "data_schema_grant_create_stream" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE STREAM"
  roles = [
    var.ingest_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "data_schema_grant_usage" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "USAGE"
  roles = [
    var.alerting_role,
    var.modeling_role,
    var.ingest_role,
    var.app_snowalert_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "data_schema_grant_create_table" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE TABLE"
  roles = [
    var.ingest_role,
    var.alerting_role,
    var.modeling_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "data_schema_grant_create_task" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE TASK"
  roles = [
    var.ingest_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}
