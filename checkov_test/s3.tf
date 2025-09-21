resource "aws_s3_bucket" "insecure_bucket" {
  bucket = "my-insecure-bucket"
  acl    = "public-read"

  versioning {
    enabled = false
  }

  server_side_encryption_configuration {
    # Deliberately omitted
  }

  logging {
    # Deliberately omitted
  }
}
