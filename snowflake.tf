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
  database   = "ADMIN_UTILS"
  schema     = "SCHEMACHANGE"
}

resource "snowflake_snowsql" "select_query" {
  name     = "select_query"
  query    = "select * from \"ADMIN_UTILS\".\"SCHEMACHANGE\".\"CHANGE_HISTORY\" limit 100"

}
