terraform {
  required_providers {
    aws = {
      source  = "aws"
      version = "~> 4.3"
    }
  }
      
  cloud {
    organization = "northernelephant"

    workspaces {
      name = "apiv5"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "dynamodb_table" {
  source = "../"

  table_name = var.table_name
  db_remote_state_bucket = var.db_remote_state_bucket
  db_remote_state_key    = var.db_remote_state_key
  read_capacity = "10" 
  write_capacity = "10"
}
