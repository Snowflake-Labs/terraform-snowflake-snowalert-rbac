# security_alerting_role to own the snowalert deployment in snowalert.results
resource "snowflake_view_grant" "results_views_grant_ownership" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_alerting_role,
  ]

  on_future = true
}

resource "snowflake_table_grant" "results_tables_grant_ownership" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_alerting_role,
  ]

  on_future = true
}

resource "snowflake_procedure_grant" "results_procedures_grant_ownership_alerting" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_alerting_role,
  ]

  on_future = true
}

resource "snowflake_function_grant" "results_functions_grant_ownership_alerting" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_alerting_role,
  ]

  on_future = true
}

resource "snowflake_stream_grant" "results_streams_grant_ownership_alerting" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_alerting_role,
  ]

  on_future = true
}

resource "snowflake_task_grant" "results_tasks_grant_ownership_alerting" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_alerting_role,
  ]

  on_future = true
}

resource "snowflake_schema_grant" "results_grant_create_table_alerting_role" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE TABLE"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_external_function_alerting_role" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE FUNCTION"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_procedure_alerting_role" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE PROCEDURE"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_stream_alerting_role" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE STREAM"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_task_alerting_role" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE TASK"
  roles = [
    var.security_alerting_role,
  ]
}


resource "snowflake_schema_grant" "snowalert_schemas_grant_usage_alerting_role" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "USAGE"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_view_alerting_role" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE VIEW"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_schema_grant_create_task" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE TASK"
  roles = [
    var.security_modeling_role,
  ]
}
