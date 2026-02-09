
resource "aws_s3_bucket" "artifacts_bucket" {
  bucket = "${var.project}-${var.environment}-artifacts-store"

  tags = merge(var.tags,

    {
     Name = "${var.project}-${var.environment}-artifacts-store"
      

    }
  )
}


resource "aws_s3_bucket_lifecycle_configuration" "artifacts" {
  bucket = aws_s3_bucket.artifacts_bucket.id

  rule {
    id     = "auto-delete"
    status = "Enabled"

    expiration {
      days = 7
    }
  }

}


# LocalStack compatibility: ensure force path style is enabled in provider
