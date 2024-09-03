resource "aws_s3_bucket" "s3lab" {
  bucket        = "${var.env}-tilabs-lab02"
  force_destroy = false
  tags = {
    "Produto" = "Site"
    "Source"  = "Terraform"
  }
}