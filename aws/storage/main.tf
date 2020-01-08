# ------Storage-----
# Create random id for AWS S3 bucket id
resource "random_id" "tf_bucket_id" {
    byte_length = 2
}

resource "aws_s3_bucket" "tf_code" {
  bucket="${var.project_name}-${random_id.tf_bucket_id.dec}"
  acl="private"
  force_destroy= true
  tags = {
      Name= "tf_bucket"
  }
  versioning {
      enabled = true
  }
  server_side_encryption_configuration {
           rule {
              apply_server_side_encryption_by_default {
                   sse_algorithm = "AES256"
                }
            }
        }
}
