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

resource "snowflake_table_grant" "results_tables_grant_insert" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "INSERT"
  roles = [
    var.app_snowalert_role,
  ]

  on_future = true
}

resource "snowflake_procedure_grant" "results_procedures_grant_ownership" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_alerting_role,
  ]

  on_future = true
}

resource "snowflake_function_grant" "results_functions_grant_ownership" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_alerting_role,
  ]

  on_future = true
}

resource "snowflake_stream_grant" "results_streams_grant_ownership" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_alerting_role,
  ]

  on_future = true
}

resource "snowflake_task_grant" "results_tasks_grant_ownership" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_alerting_role,
  ]

  on_future = true
}

resource "snowflake_schema_grant" "results_grant_create_table" {
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

  privilege = "CREATE EXTERNAL FUNCTION"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_procedure" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE PROCEDURE"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_stream" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE STREAM"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_task" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE TASK"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_usage" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "USAGE"
  roles = [
    var.security_alerting_role,
    var.app_snowalert_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_view" {
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
    var.security_alerting_role,
  ]
}
