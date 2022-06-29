module "snowalert_grants" {
  source = "../../"

  snowalert_warehouse_name = var.snowalert_warehouse_name
  snowalert_database_name  = var.snowalert_database_name

  ingest_role        = var.ingest_role
  alerting_role      = var.alerting_role
  modeling_role      = var.modeling_role
  monitoring_role    = var.monitoring_role
  snowalert_app_role = var.snowalert_app_role

  # Schemas
  data_schema_name       = var.data_schema_name
  rules_schema_name      = var.rules_schema_name
  results_schema_name    = var.results_schema_name
  monitoring_schema_name = var.monitoring_schema_name

  providers = {
    snowflake.admin_role = snowflake.admin_role
  }
}
