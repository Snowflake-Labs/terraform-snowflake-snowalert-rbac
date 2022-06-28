resource "snowflake_schema_grant" "snowalert_monitoring_schema_grant_create_task" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "CREATE TASK"
  roles = [
    var.monitoring_role,
  ]

  with_grant_option = false
}

resource "snowflake_schema_grant" "snowalert_monitoring_schema_grant_ownership" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.monitoring_role,
  ]
}

resource "snowflake_schema_grant" "snowalert_monitoring_schema_grant_create_function" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.monitoring_schema_name

  privilege = "CREATE FUNCTION"
  roles = [
    var.monitoring_role,
  ]
}


