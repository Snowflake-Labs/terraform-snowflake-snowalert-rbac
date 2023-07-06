module "snowalert_grants" {
  source = "../../"

  snowalert_warehouse_name = var.snowalert_warehouse_name
  snowalert_database_name  = var.snowalert_database_name

  ingest_role     = var.ingest_role
  alerting_role   = var.alerting_role
  modeling_role   = var.modeling_role
  monitoring_role = var.monitoring_role

  providers = {
    snowflake.admin_role = snowflake.admin_role
  }
}
