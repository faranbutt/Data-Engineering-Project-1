terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
}

provider "aws" {
  region     = "<>"
  access_key = "<>"
  secret_key = ">>"
}
resource "aws_s3_bucket" "example" {
  bucket        = "farans-bucket"
  force_destroy = true
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.example.id
  acl    = "public-read"
}

# resource "aws_redshift_cluster" "first_redshift_cluster" {
#   cluster_identifier        = "mage-first-cluster"
#   database_name             = "magedb"
#   master_username           = "root"
#   master_password           = "Root12345"
#   node_type                 = "dc2.large"
#   cluster_type              = "single-node"
#   final_snapshot_identifier = "mage-cluster"
#   skip_final_snapshot       = true
#   publicly_accessible       = true
# }