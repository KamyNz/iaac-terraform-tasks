terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region                   = var.aws_region
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "dev-mlflow"

  default_tags {
    tags = {
      OTU                   = var.OTU
      TerminationProtection = var.TerminationProtection
      Owner                 = var.Owner
    }
  }
}
