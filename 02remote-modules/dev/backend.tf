resource "aws_s3_bucket" "terraform-state-own"{
  bucket = "terraform-state-own"
}

terraform {
  backend "s3"{
    bucket = "terraform-state-own"
    key    = "dev-ci_cd/terraform.tfstate"
    region = "us-east-1"
  }
}
