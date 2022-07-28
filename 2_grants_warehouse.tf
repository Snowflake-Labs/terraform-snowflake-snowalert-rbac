resource "snowflake_warehouse_grant" "snowalert_warehouse_grant_usage_to_roles" {
  provider = snowflake.security_admin_role

  warehouse_name = "SNOWALERT_WAREHOUSE"
  privilege      = "USAGE"

  roles = [
    var.security_monitoring_role,
    var.security_alerting_role,
    var.security_ingest_role,
    var.security_modeling_role,
  ]
}
