resource "snowflake_database_grant" "snowalert_db_grant_usage" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name

  privilege = "USAGE"
  roles = [
    var.security_ingest_role,
    var.security_alerting_role,
    var.security_modeling_role,
    var.security_monitoring_role,
  ]

  with_grant_option = false
}

resource "snowflake_database_grant" "snowalert_db_grant_create_schema" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name

  privilege = "CREATE SCHEMA"
  roles = [
    var.security_ingest_role,
    var.security_alerting_role,
    var.security_ingest_role,
    var.security_modeling_role,
    var.security_monitoring_role,
  ]

  with_grant_option = false
}
