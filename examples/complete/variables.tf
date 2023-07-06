# Required Variables
variable "snowflake_account" {
  type        = string
  description = "Snowflake Account."
}

# Roles
variable "admin_role" {
  type        = string
  description = "Role."
}

variable "integration_owner_role" {
  type        = string
  description = "Role."
}

variable "ingest_role" {
  type        = string
  description = "Role."
}

variable "alerting_role" {
  type        = string
  description = "Role."
}

variable "modeling_role" {
  type        = string
  description = "Role."
}

variable "monitoring_role" {
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

variable "snowalert_role_name" {
  type        = string
  description = "Role used to grant ownership to all Snowalert objects."
  default     = "APP_SNOWALERT"
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
