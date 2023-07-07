resource "snowflake_schema_grant" "monitoring_schema_grant_usage" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "USAGE"
  roles = [
    var.alerting_role,
    var.ingest_role,
    var.modeling_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "snowalert_monitoring_schema_grant_create_task" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "CREATE TASK"
  roles = [
    var.monitoring_role,
  ]

  with_grant_option      = false
  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "snowalert_monitoring_schema_grant_create_function" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "CREATE FUNCTION"
  roles = [
    var.monitoring_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_function_grant" "monitoring_functions_grant_ownership" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.monitoring_role,
  ]

  on_future = true
}

resource "snowflake_function_grant" "monitoring_functions_grant_usage" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "USAGE"
  roles = [
    var.alerting_role,
    var.ingest_role,
    var.modeling_role,
  ]

  on_future              = true
  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_table_grant" "monitoring_tables_grant_insert" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "INSERT"
  roles = [
    var.alerting_role,
    var.ingest_role,
    var.modeling_role,
  ]

  on_future              = true
  enable_multiple_grants = var.enable_multiple_grants
}
