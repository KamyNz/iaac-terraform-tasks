# #Count usage
# resource "aws_instance" "example" {
#   count         = 2
#   ami           = "ami-0f34c5ae932e6f0e4"
#   instance_type = "t2.micro"

#   tags = {
#     Name                  = "instance-ccamp-example-${count.index}"
#     OTU                   = var.OTU
#     Owner                 = var.Owner
#     TerminationProtection = var.TerminationProtection
#   }
# }

# #For each with map usage
# variable "usuarios" {
#   default = {
#     alice = "admin"
#     bob   = "only-read"
#   }
# }

# resource "aws_iam_user" "example" {
#   for_each = var.usuarios
#   name     = each.key
#   tags = {
#     Rol = each.value
#   }
# }


resource "aws_s3_bucket" "bucket" {
  bucket = "bucket-ccamp-example-1"

  tags = {
    OTU                   = var.OTU
    Owner                 = var.Owner
    TerminationProtection = var.TerminationProtection
  }
}

resource "aws_s3_object" "object" {
  #bucket = aws_s3_bucket.bucket.bucket #implicit dependency
  bucket     = "bucket-ccamp-example-1"
  key        = "memes/terraform_apply.jpeg"
  source     = "terraform_apply.jpeg"
  depends_on = [aws_s3_bucket.bucket] #explicit dependency
}

