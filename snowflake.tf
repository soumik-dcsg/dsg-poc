terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.36"
    }
  }
}

provider "snowflake" {

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

  database = "ADMIN_UTILS"

  schema   = "SCHEMACHANGE"

  role     = "DEV_SYSADMIN"

}
