resource "snowflake_schema_grant" "data_schema_grant_create_view" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE VIEW"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "data_schema_grant_create_function" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE FUNCTION"
  roles = [
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "data_schema_grant_usage" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "USAGE"
  roles = [
    var.security_alerting_role,
    var.security_modeling_role,
    var.security_ingest_role,
  ]
}

resource "snowflake_schema_grant" "data_schema_grant_create_table" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE TABLE"
  roles = [
    var.security_ingest_role,
    var.security_alerting_role,
  ]
}

resource "snowflake_schema_grant" "data_schema_grant_create_task" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE TASK"
  roles = [
    var.security_ingest_role,
  ]
}
