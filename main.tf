terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.59"
    }
  }
}

provider "snowflake" {
  role  = "ACCOUNTADMIN"
  username   = "soumikcal"
  password   = "Tinku449"
  account    = "ipudwtv-us43863"
  warehouse  = "TEST_DB1"
}

resource "snowflake_database" "db" {
  name     = "TEST_DB1"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TEST_DB1"
  warehouse_size = "small"

  auto_suspend = 60
}
