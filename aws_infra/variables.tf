variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
}

variable "acm_certificate_arn" {
  type        = string
  description = "The ARN of the ACM certificate for CloudFront"
}