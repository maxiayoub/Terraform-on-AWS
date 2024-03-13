# Configure the provider software version
terraform {
  required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
      }
  }

  backend "s3" {
  bucket = "terraform-bucket-max2"
  key    = "project2_state"
  dynamodb_table = "project2_state_table"
  region = "us-west-2"
  }
}

provider "aws" {
  region = var.p2_region
}
