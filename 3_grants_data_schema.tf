resource "snowflake_schema_grant" "data_grant_create_view_alerting_role" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE VIEW"
  roles = [
    var.alerting_role,
  ]
}

resource "snowflake_schema_grant" "data_grant_create_external_function" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE FUNCTION"
  roles = [
    var.alerting_role,
  ]
}

resource "snowflake_schema_grant" "snowalert_data_schema_grant_usage" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "USAGE"
  roles = [
    var.alerting_role,
  ]
}

resource "snowflake_schema_grant" "data_grant_create_table_alerting_role" {
  provider = snowflake.admin_role

  database_name = var.snowalert_database_name
  schema_name   = var.data_schema_name

  privilege = "CREATE TABLE"
  roles = [
    var.alerting_role,
  ]
}

# resource "snowflake_view_grant" "data_views_grant_ownership" {
#   provider = snowflake.admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "OWNERSHIP"
#   # This can have only one role
#   roles = [
#     var.ingest_role,
#   ]

#   on_future = true
# }

# resource "snowflake_table_grant" "data_tables_grant_ownership_modeling" {
#   provider = snowflake.admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "OWNERSHIP"
#   roles     = [var.ingest_role]

#   on_future = true
# }

# resource "snowflake_table_grant" "snowalert_data_tables_grant_select" {
#   provider = snowflake.admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "SELECT"
#   roles = [
#     var.snowalert_app_role,
#     var.alerting_role
#   ]

#   on_future = true
# }

# resource "snowflake_view_grant" "snowalert_data_views_grant_select" {
#   provider = snowflake.admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "SELECT"
#   roles = [
#     var.snowalert_app_role,
#     var.alerting_role
#   ]

#   on_future = true
# }

# resource "snowflake_view_grant" "snowalert_data_views_grant_reference" {
#   provider = snowflake.admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "REFERENCES"
#   roles = [
#     var.snowalert_app_role,
#     var.alerting_role
#   ]

#   on_future = true
# }

# resource "snowflake_function_grant" "snowalert_data_functions_grant_usage_app_snowalert" {
#   provider = snowflake.admin_role

#   database_name = snowflake_database.snowalert.name
#   schema_name   = snowflake_schema.data.name

#   privilege = "USAGE"
#   roles     = [var.snowalert_app_role]

#   on_future = true
# }
