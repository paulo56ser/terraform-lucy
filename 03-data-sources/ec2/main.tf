terraform {
  required_version = " 1.3.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.38.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-852582244253"
    key     = "dev/03-data-sources-s3/terraform.tfstate"
    region  = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}
