resource "snowflake_schema_grant" "monitoring_schema_grant_usage" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "USAGE"
  roles = [
    var.security_alerting_role,
    var.security_ingest_role,
    var.security_modeling_role,
  ]

  on_future = true
}

resource "snowflake_schema_grant" "snowalert_monitoring_schema_grant_create_task" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "CREATE TASK"
  roles = [
    var.security_monitoring_role,
  ]

  with_grant_option = false
}

resource "snowflake_schema_grant" "snowalert_monitoring_schema_grant_create_function" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "CREATE FUNCTION"
  roles = [
    var.security_monitoring_role,
  ]
}

resource "snowflake_function_grant" "monitoring_functions_grant_ownership" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_monitoring_role,
  ]

  on_future = true
}

resource "snowflake_function_grant" "monitoring_functions_grant_usage" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "USAGE"
  roles = [
    var.security_alerting_role,
    var.security_ingest_role,
    var.security_modeling_role,
  ]

  on_future = true
}


resource "snowflake_table_grant" "monitoring_tables_grant_insert" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "INSERT"
  roles = [
    var.security_alerting_role,
    var.security_ingest_role,
    var.security_modeling_role,
  ]

  on_future = true
}
