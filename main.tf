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
  warehouse  = "COMPUTE_WH"
}

resource "snowflake_database" "db" {
  name     = "TEST_DB1"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "COMPUTE_WH"
  warehouse_size = "Small"

  auto_suspend = 650
}
