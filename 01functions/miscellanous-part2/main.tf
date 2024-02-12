data "aws_ami" "example-data-ccamp" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
    #values = ["al2023-ami-2023.*arm64"]
  }
}

resource "aws_instance" "example-ccamp" {
  ami           = data.aws_ami.example-data-ccamp.id
  instance_type = var.instance_type

  tags = {
    Name = "example-ccamp"
    OTU                   = var.OTU
    Owner                 = var.Owner
    TerminationProtection = var.TerminationProtection
  }

  #Lifecycle usage
  lifecycle {
    precondition {
      condition     = data.aws_ami.example-data-ccamp.architecture == "x86_64"
      error_message = "You must select a AMI with x86_64 architecture"
    }
  }

  # provisioner "local_exec" {
  #   command = "echo 'Instance was created! :)'"
  # }

}
