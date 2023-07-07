resource "snowflake_database_grant" "snowalert_db_grant_usage" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name

  privilege = "USAGE"
  roles = [
    var.ingest_role,
    var.alerting_role,
    var.modeling_role,
    var.monitoring_role,
    var.app_snowalert_role,
  ]

  with_grant_option      = false
  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_database_grant" "snowalert_db_grant_create_schema" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name

  privilege = "CREATE SCHEMA"
  roles = [
    var.ingest_role,
    var.alerting_role,
    var.ingest_role,
    var.modeling_role,
    var.monitoring_role,
  ]

  with_grant_option      = false
  enable_multiple_grants = var.enable_multiple_grants
}
