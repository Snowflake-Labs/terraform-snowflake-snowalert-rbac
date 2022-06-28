# alerting_role to own the snowalert deployment in snowalert.results
resource "snowflake_view_grant" "results_views_grant_ownership" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.alerting_role,
  ]

  on_future = true
}

resource "snowflake_table_grant" "results_tables_grant_ownership" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.alerting_role,
  ]

  on_future = true
}

resource "snowflake_procedure_grant" "results_procedures_grant_ownership_alerting" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.alerting_role,
  ]

  on_future = true
}

resource "snowflake_function_grant" "results_functions_grant_ownership_alerting" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.alerting_role,
  ]

  on_future = true
}

resource "snowflake_stream_grant" "results_streams_grant_ownership_alerting" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.alerting_role,
  ]

  on_future = true
}

resource "snowflake_task_grant" "results_tasks_grant_ownership_alerting" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.alerting_role,
  ]

  on_future = true
}

resource "snowflake_schema_grant" "results_grant_create_table_alerting_role" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE TABLE"
  roles = [
    var.alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_external_function_alerting_role" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE FUNCTION"
  roles = [
    var.alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_procedure_alerting_role" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE PROCEDURE"
  roles = [
    var.alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_stream_alerting_role" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE STREAM"
  roles = [
    var.alerting_role,
  ]
}

resource "snowflake_schema_grant" "results_grant_create_task_alerting_role" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE TASK"
  roles = [
    var.alerting_role,
  ]
}

# app_snowalert
resource "snowflake_task_grant" "results_task_grant_execute_app_snowalert" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "OPERATE"
  roles     = [var.snowalert_app_role]

  on_future = true
}

resource "snowflake_schema_grant" "snowalert_schemas_grant_usage_alerting_role" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "USAGE"
  roles = [
    var.alerting_role,
  ]
}

resource "snowflake_stream_grant" "snowalert_streams_grant_select_app_snowalert" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "SELECT"
  roles     = [var.snowalert_app_role]

  on_future = true
}

resource "snowflake_procedure_grant" "snowalert_procedures_grant_usage_app_snowalert" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "USAGE"
  roles     = [var.snowalert_app_role]

  on_future = true
}

resource "snowflake_function_grant" "snowalert_results_functions_grant_usage_app_snowalert" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "USAGE"
  roles     = [var.snowalert_app_role]

  on_future = true
}

resource "snowflake_schema_grant" "results_grant_create_view_alerting_role" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.results_schema_name

  privilege = "CREATE VIEW"
  roles = [
    var.alerting_role,
  ]
}
