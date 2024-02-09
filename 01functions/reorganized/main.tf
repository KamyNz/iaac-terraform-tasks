# Resource, Tag and Block
resource "aws_s3_bucket" "bucket" {
  #using format function
  bucket = format("bucket-%s", var.bucket_suffix)
  acl    = "private"

  tags = {
    Name                  = "S3 bucket Reorganized"
    OTU                   = var.OTU
    TerminationProtection = var.TerminationProtection
    Owner                 = var.Owner
  }

}
