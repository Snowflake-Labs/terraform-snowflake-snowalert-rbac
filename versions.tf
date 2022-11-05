terraform {
  required_version = "~> 1.3.4"

  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.40.0"

      configuration_aliases = [
        snowflake.security_admin_role,
      ]
    }
  }
}
