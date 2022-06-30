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
  ]
}

resource "snowflake_schema_grant" "data_schema_grant_create_table" {
  provider = snowflake.security_admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE TABLE"
  roles = [
    var.security_alerting_role,
  ]
}

# resource "snowflake_view_grant" "data_views_grant_ownership" {
#   provider = snowflake.security_admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "OWNERSHIP"
#   # This can have only one role
#   roles = [
#     var.security_ingest_role,
#   ]

#   on_future = true
# }

# resource "snowflake_table_grant" "data_tables_grant_ownership_modeling" {
#   provider = snowflake.security_admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "OWNERSHIP"
#   roles     = [var.security_ingest_role]

#   on_future = true
# }

# resource "snowflake_table_grant" "snowalert_data_tables_grant_select" {
#   provider = snowflake.security_admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "SELECT"
#   roles = [
#     var.security_alerting_role
#   ]

#   on_future = true
# }

# resource "snowflake_view_grant" "snowalert_data_views_grant_select" {
#   provider = snowflake.security_admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "SELECT"
#   roles = [
#     var.security_alerting_role
#   ]

#   on_future = true
# }

# resource "snowflake_view_grant" "snowalert_data_views_grant_reference" {
#   provider = snowflake.security_admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "REFERENCES"
#   roles = [
#     var.security_alerting_role
#   ]

#   on_future = true
# }

# resource "snowflake_function_grant" "snowalert_data_functions_grant_usage_app_snowalert" {
#   provider = snowflake.security_admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "USAGE"
#   roles     = []

#   on_future = true
# }
