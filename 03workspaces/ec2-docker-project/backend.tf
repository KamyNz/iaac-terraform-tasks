#Backend to get version of modules in github account

terraform {
  backend "s3" {
    bucket         = "cicd-workspace-terraform-state"
    key            = "ec2-docker-projects/terraform.tfstate" #Different key (Subfolder in bucket)
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "tf-state-own-lock" # Same dynamo table for Locking


  }
}
