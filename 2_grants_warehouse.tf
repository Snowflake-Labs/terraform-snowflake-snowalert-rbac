resource "snowflake_warehouse_grant" "snowalert_warehouse_grant_usage_to_roles" {
  provider = snowflake.admin_role

  warehouse_name = "SNOWALERT_WAREHOUSE"
  privilege      = "USAGE"

  roles = [
    var.monitoring_role,
    var.alerting_role,
    var.ingest_role,
  ]
}
