terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.59"
    }
  }
}
variable "USER" { type= string } 
variable "PASSWORD" { type= string } 
variable "ACCOUNT" { type= string } 

provider "snowflake" {
  role     = "ACCOUNTADMIN"
  username = "${var.USER}"
  password = "${var.PASSWORD}"
  account  = "${var.ACCOUNT}"
}

resource "snowflake_database" "db" {
  name = "TEST_DB4"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "COMPUTE_WH4"
  warehouse_size = "X-Small"

  auto_suspend = 650
}
