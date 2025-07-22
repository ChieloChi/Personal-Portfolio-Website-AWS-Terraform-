provider "aws"{
    region = "us-east-1"
}
resource "aws-s3_bicket" "portfolio" {
    bucket = var.bucket_name

    website {
        index_document = "index.html"
        error_document ="index.html"
    }
    tags = {
        Name = "Portfolio Website Bucket"
    }
  
}

resource "aws_s3_bucket_policy" "public_read" {
    bucket = aws_s3_bucket.portfolio.id

    policy = jsondecode({
        Version = "2012-10-17"
    })
  
}