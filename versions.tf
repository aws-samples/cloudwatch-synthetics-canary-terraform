terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "= 2.4.2"
    }
  }

  required_version = "~> 1.7.3"
}