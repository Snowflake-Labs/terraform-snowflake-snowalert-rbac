resource "snowflake_warehouse_grant" "snowalert_warehouse_grant_usage_to_roles" {
  provider = snowflake.security_admin_role

  warehouse_name = "SNOWALERT_WAREHOUSE"
  privilege      = "USAGE"

  roles = flatten([
    var.security_monitoring_role,
    var.security_alerting_role,
    var.security_ingest_role,
    var.security_modeling_role,
    var.warehouse_external_roles,
  ])

  enable_multiple_grants = var.enable_multiple_grants
}
