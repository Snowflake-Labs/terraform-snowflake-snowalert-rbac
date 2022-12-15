# security_modeling_role to own the views in snowalert.rules
resource "snowflake_view_grant" "rules_views_grant_ownership" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.rules_schema_name

  privilege = "OWNERSHIP"
  roles = [
    var.security_modeling_role
  ]

  on_future = true
}

resource "snowflake_view_grant" "rules_views_grant_select" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.rules_schema_name

  privilege = "SELECT"
  roles = [
    var.security_alerting_role,
    var.security_modeling_role,
  ]

  on_future              = true
  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_table_grant" "rules_tables_grant_ownership" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.rules_schema_name

  privilege = "OWNERSHIP"
  roles     = [var.security_modeling_role]

  on_future = true
}

resource "snowflake_schema_grant" "rules_schema_grant_usage" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.rules_schema_name

  privilege = "USAGE"
  roles = [
    var.security_alerting_role,
    var.security_modeling_role,
  ]

  with_grant_option      = false
  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_view_grant" "rules_view_grant_references" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.rules_schema_name

  privilege = "REFERENCES"
  roles = [
    var.security_modeling_role,
  ]

  on_future              = true
  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "rules_schema_grant_create_view" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.rules_schema_name

  privilege = "CREATE VIEW"
  roles = [
    var.security_modeling_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "rules_schema_grant_create_task" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.rules_schema_name

  privilege = "CREATE TASK"
  roles = [
    var.security_modeling_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "rules_schema_grant_create_table" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.rules_schema_name

  privilege = "CREATE TABLE"
  roles = [
    var.security_modeling_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}

resource "snowflake_schema_grant" "rules_schema_grant_create_tag" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.rules_schema_name

  privilege = "CREATE TAG"
  roles = [
    var.security_modeling_role,
  ]

  enable_multiple_grants = var.enable_multiple_grants
}
