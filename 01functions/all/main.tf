# Resource, Tag and Block
resource "aws_s3_bucket" "bucket" {
  bucket = format("bucket-%s", var.bucket_suffix)
  acl    = "private"

  tags = {
    Name                  = "S3 bucket"
    OTU                   = "cmartinez-tf"
    TerminationProtection = false
    Owner                 = "cmartinez"
  }
}

#Variable, Tag, block
variable "bucket_suffix" {
  description = "Sufixx to add to bucket"
  type        = string
  default     = "ccmap-tf-01functions"
}

