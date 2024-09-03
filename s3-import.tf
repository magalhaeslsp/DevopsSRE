resource "aws_s3_bucket" "lab-import-aws" {
  bucket = "lab-import-aws"
  versioning {
    enabled = true
  }
  tags = merge(var.globaltags,{"TIME"="mkt"})
}