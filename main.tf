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
  username   = "SCHEMA_CHANGE_TEST_USER"
  password   = "DicksSportingGoods2023#$"
  account    = "sl38675"
  warehouse  = "EDW_ENGINEER_WH_S"
}

resource "snowflake_database" "db" {
  name     = "TF_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "large"

  auto_suspend = 60
}
