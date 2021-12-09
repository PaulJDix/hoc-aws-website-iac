# Copy the HTML file into the bucket
resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.shsgwc53211machinebucket1.id
  key    = "index.html"
  source = "index.html"
#  source = filebase64("index.html")
  content_type = "text/html"
  etag = filemd5("index.html")
}

# Apply some permissions on the bucket
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.shsgwc53211machinebucket1.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

# Create the bucket
resource "aws_s3_bucket" "shsgwc53211machinebucket1" {
  bucket = "shsgwc53211machinebucket1"
  policy = file("policy.json")
  website {
    index_document = "index.html"
  }
}
