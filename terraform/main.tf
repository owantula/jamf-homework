terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "ow-projects"

    workspaces {
      name = "jamf-homework"
    }
  }
}

terraform {
  required_version = "1.7.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}


provider "aws" {
  region = var.aws_region
}
