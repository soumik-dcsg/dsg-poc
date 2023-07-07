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
  username   = ${env.USER}
  password   = ${env.PASSWORD}
  account    = ${env.ACCOUNT} 
}

resource "snowflake_database" "db" {
  name     = "TEST_DB3"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "COMPUTE_WH3"
  warehouse_size = "X-Small"

  auto_suspend = 650
}
