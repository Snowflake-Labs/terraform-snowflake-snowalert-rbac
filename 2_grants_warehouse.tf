resource "snowflake_warehouse_grant" "snowalert_warehouse_grant_usage_to_roles" {
  provider = snowflake.admin_role

  warehouse_name = "SNOWALERT_WAREHOUSE"
  privilege      = "USAGE"

  roles = flatten([
    var.monitoring_role,
    var.alerting_role,
    var.ingest_role,
    var.modeling_role,
    var.warehouse_external_roles,
  ])

  enable_multiple_grants = var.enable_multiple_grants
}
