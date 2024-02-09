######################################
#Outputs to get key information
######################################
output "bucket" {
  description = "The ID of the bucket generated is"
  value       = aws_s3_bucket.bucket.id
}
