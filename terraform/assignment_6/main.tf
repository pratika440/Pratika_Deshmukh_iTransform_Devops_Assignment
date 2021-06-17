provider "aws" {
  region = "us-east-1"
  access_key = "AKIA6BGHQPWCLBY2USG4"
  secret_key = "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"
}

resource "random_id" "tf_bucket_id" {
    byte_length = 2
}

resource "aws_s3_bucket" "tf_code" {
    
    bucket = "${var.project_name}-${random_id.tf_bucket_id.dec}"
    acl = "private"
    force_destroy = true
 
    tags = {
         Name = "tf_bucket"
          }
}