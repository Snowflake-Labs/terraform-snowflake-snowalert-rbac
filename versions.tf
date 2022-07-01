terraform {
  required_version = ">= 1.2.0"

  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 0.37.0"

      configuration_aliases = [
        snowflake.security_admin_role,
      ]
    }
  }
}
