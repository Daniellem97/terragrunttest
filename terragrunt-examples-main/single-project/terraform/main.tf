
provider "aws" {
  region = "us-west-2" # You can choose the region that suits your needs
}

resource "random_pet" "this" {
  length = 5
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
