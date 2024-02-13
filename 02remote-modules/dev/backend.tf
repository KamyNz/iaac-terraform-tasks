#Creating bucket for remote backend in S3
resource "aws_s3_bucket" "terraform-state-cicd" {
  bucket = "cicd-workspace-terraform-state"
}

#Telling Terraform to add key to bucket, BEFORE
# terraform {
#   backend "s3"{
#     bucket = "terraform-state-own"
#     key    = "dev/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

#Making version with bucket
resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = "cicd-workspace-terraform-state"
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name = "tf-state-own-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

terraform {
  backend "s3" {
    bucket = "cicd-workspace-terraform-state"
    key = "ci-cd/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "tf-state-own-lock"
  }
}

