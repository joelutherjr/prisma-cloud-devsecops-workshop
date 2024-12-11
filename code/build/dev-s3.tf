provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "ae939942-db92-4068-bf44-4915259d43b7"
    git_commit           = "21aeb374ac00ddcca87f0f840ad395a01de150b4"
    git_file             = "code/build/dev-s3.tf"
    git_last_modified_at = "2024-12-11 17:31:03"
    git_last_modified_by = "81325707+joelutherjr@users.noreply.github.com"
    git_modifiers        = "81325707+joelutherjr"
    git_org              = "joelutherjr"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
