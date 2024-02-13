resource "aws_instance" "cloudcamp" {
  ami = "ami-0889a44b331db0194"
  instance_type = var.instance_type
  tags = {
    bootcamp = "devops"
    Name= "DisneyPlus"
  }
}

# resource "time_sleep" "wait" {
#  create_duration = "200s"
# }
