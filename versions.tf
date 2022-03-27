terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }

  cloud {
    organization = "hamacorp"

    workspaces {
      tags = ["learn-terraform"]
    }
  }

  required_version = ">= 1.1.0"
}
