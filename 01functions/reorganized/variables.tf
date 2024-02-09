######################################
#Variables for bucket
######################################
variable "bucket_suffix" {
  description = "Sufixx to add to bucket"
  type        = string
  default     = "ccmap-tf-01functions-v2-own-aws"
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


