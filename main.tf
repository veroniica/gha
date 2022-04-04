provider "aws" {
    region = "us-east-1"
    access_key = "AKIAWHSZZ44Q2H5NSHE3"
    secret_key = "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"
}

resource "aws_s3_bucket" "verop1"{
    bucket = "verop5"
    tags = {
        Name = "my bucket5"
        Environment = "Dev5"
    }
}

resource "aws_s3_bucket_acl" "example" {
    bucket = aws_s3_bucket.verop1.id
    acl = "private"
}