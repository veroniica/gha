
provider "aws" {
    region = "us-east-1"
    access_key = var.AWS_ACCESS_KEY
    secret_key = var.AWS_SECRET_ACCESS_KEY
}

terraform {
  backend "s3" {
    bucket = "terraform-verop"
    key    = "route53.tfstate"
    region = "us-east-1"
    access_key = var.AWS_ACCESS_KEY
    secret_key = var.AWS_SECRET_ACCESS_KEY
  }
}

resource "aws_s3_bucket" "verop1"{
    bucket = "verop5"
    tags = {
        Name = "my bucket_5"
        Environment = "Dev_5"
        Test = "6"
    }
}

resource "aws_s3_bucket_acl" "example" {
    bucket = aws_s3_bucket.verop1.id
    acl = "private"
}