module "snowalert_grants" {
  source = "../../"

  snowalert_warehouse_name = var.snowalert_warehouse_name
  snowalert_database_name  = var.snowalert_database_name

  security_ingest_role     = var.security_ingest_role
  security_alerting_role   = var.security_alerting_role
  security_modeling_role   = var.security_modeling_role
  security_monitoring_role = var.security_monitoring_role

  # Schemas
  data_schema_name       = var.data_schema_name
  rules_schema_name      = var.rules_schema_name
  results_schema_name    = var.results_schema_name
  monitoring_schema_name = var.monitoring_schema_name

  providers = {
    snowflake.security_admin_role = snowflake.security_admin_role
  }
}
