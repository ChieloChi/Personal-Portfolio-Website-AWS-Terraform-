output "s3_website_url" {
    value = aws_s3_bucket.portfolio.website_endpoint
  
}

output "cloudfront_domain" {
    value = aws_cloudfront_distribution.cdn.domain_name
  
}