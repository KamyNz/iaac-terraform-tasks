
######################################
#Variables for AWS Region
######################################
variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

######################################
#Variables for key tags
######################################
variable "OTU" {
  description = "Organizational Unit"
  type        = string
  default     = "cmartinez-tf"

}

variable "TerminationProtection" {
  description = "Boolean if false, there is not protection of termination. "
  type        = bool
  default     = false

}

variable "Owner" {
  description = "Owner of the resource"
  type        = string
  default     = "cmartinez"
}


