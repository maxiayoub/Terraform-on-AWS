# Configure the provider software version
terraform {
  required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
      }
  }

  backend "s3" {
  bucket = "terraform-bucket-max1"
  key    = "project1_state"
  dynamodb_table = "project1_state_table"
  region = "us-east-1"
  }
}

provider "aws" {
  region = var.p1_region
}
