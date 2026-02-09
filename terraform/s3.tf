
resource "aws_s3_bucket" "artifacts_bucket" {
  bucket = "${var.project}-${var.environment}-artifacts"

  tags = merge(var.tags,

    {
     Name = "${var.project}-${var.environment}-artifacts"
      

    }
  )
}


resource "aws_s3_bucket" "artifacts" {
  bucket = aws_s3_bucket.artifacts_bucket.id

  lifecycle_rule {
    id      = "auto-delete"
    enabled = true

    expiration {
      days = 7
    }
  }
    tags = merge(var.tags,

    {
     Name = "${var.project}-${var.environment}-artifacts"
      

    }
  )
}

# LocalStack compatibility: ensure force path style is enabled in provider
