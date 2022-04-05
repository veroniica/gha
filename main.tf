provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-verop"
    key    = "route53.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "verop1"{
    bucket = "verop5"
    tags = {
        Name = "my bucket_5"
        Environment = "Dev_5"
        Test = "8"
    }
}

resource "aws_s3_bucket_acl" "example" {
    bucket = aws_s3_bucket.verop1.id
    acl = "private"
}

resource "aws_s3_bucket" "verop_delete"{
    bucket = "verop_delete"
    tags = {
        Name = "delete1"
        Environment = "delete1"
        Test = "1"
    }
}

resource "aws_s3_bucket_acl" "acl_example" {
    bucket = aws_s3_bucket.verop_delete.id
    acl = "private"
}