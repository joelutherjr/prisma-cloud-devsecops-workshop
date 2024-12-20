provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "be304158-76a2-4f83-b859-7ef813025add"
    git_commit           = "9b64604906a7f130bebf9fb1039c01d4dcfc2442"
    git_file             = "code/build/dev-s3.tf"
    git_last_modified_at = "2024-12-11 17:35:21"
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
