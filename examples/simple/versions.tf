terraform {
  required_version = ">= 1.2.0"

  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 0.40.0"
    }
  }
}
