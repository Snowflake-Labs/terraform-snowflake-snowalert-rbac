# Required Variables

# Roles
variable "security_ingest_role" {
  type        = string
  description = "Role."
}

variable "security_alerting_role" {
  type        = string
  description = "Role."
}

variable "security_modeling_role" {
  type        = string
  description = "Role."
}

variable "security_monitoring_role" {
  type        = string
  description = "Role."
}

# Optional Variables
variable "aws_region" {
  type        = string
  description = "Region for the AWS resources."
  default     = "us-west-2"
}

# Account level objects
variable "snowalert_warehouse_name" {
  type        = string
  description = "Warehouse for snowalert."
  default     = "SNOWALERT_WAREHOUSE"
}

variable "snowalert_database_name" {
  type        = string
  description = "Database that will be created for all the Snowalert objects."
  default     = "SNOWALERT"
}

# Schemas
variable "data_schema_name" {
  type        = string
  description = "Schema that has the raw data tables and shares that SnowAlert rules analyze."
  default     = "DATA"
}

variable "rules_schema_name" {
  type        = string
  description = "Schema that has the rules as views."
  default     = "RULES"
}

variable "results_schema_name" {
  type        = string
  description = "Schemas for all the business logic and raw data of SnowAlert."
  default     = "RESULTS"
}

variable "monitoring_schema_name" {
  type        = string
  description = "Schemas for all the monitoring infrastructure for SnowAlert."
  default     = "MONITORING"
}

variable "app_snowalert_role" {
  type        = string
  description = "Role."
  default     = "APP_SNOWALERT"
}

variable "warehouse_external_roles" {
  type        = list(any)
  description = "List of additional roles that need SnowAlert warehouse usage permissions."
  default     = []
}
