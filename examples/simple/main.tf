module "snowalert_grants" {
  source = "../../"

  snowalert_warehouse_name = var.snowalert_warehouse_name
  snowalert_database_name  = var.snowalert_database_name

  security_ingest_role     = var.security_ingest_role
  security_alerting_role   = var.security_alerting_role
  security_modeling_role   = var.security_modeling_role
  security_monitoring_role = var.security_monitoring_role
  snowalert_app_role       = var.snowalert_app_role

  providers = {
    snowflake.security_admin_role = snowflake.security_admin_role
  }
}
