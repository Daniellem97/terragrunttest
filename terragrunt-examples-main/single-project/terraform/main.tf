terraform {
  required_providers {
    spacelift = {
      source  = "spacelift.io/spacelift-io/spacelift"
      version = "1.13.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
}

provider "spacelift" {}

provider "aws" {
  region = "us-west-2"  # You can change the region as needed
}

resource "random_pet" "this" {
  length = 5
}

resource "aws_s3_bucket" "my_bucket0" {
  bucket = "mybucketbiyfhdp0" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket1" {
  bucket = "mybucketbiyfhdp1" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket2" {
  bucket = "mybucketbiyfhdp2" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket3" {
  bucket = "mybucketbiyfhdp3" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket4" {
  bucket = "mybucketbiyfhdp4" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket5" {
  bucket = "mybucketbiyfhdp5" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket6" {
  bucket = "mybucketbiyfhdp6" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket7" {
  bucket = "mybucketbiyfhdp7" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket8" {
  bucket = "mybucketbiyfhdp8" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket9" {
  bucket = "mybucketbiyfhdp9" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket10" {
  bucket = "mybucketbiyfhdp10" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket11" {
  bucket = "mybucketbiyfhdp11" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket12" {
  bucket = "mybucketbiyfhdp12" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket13" {
  bucket = "mybucketbiyfhdp13" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my_bucket14" {
  bucket = "mybucketbiyfhdp14" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "spacelift_stack" "this" {
 github_enterprise {
    namespace = "Daniellem97"
  }

branch = "main"
name = "labelsdebug"
repository = "securitygroups"
labels            = var.spacelift_stack_labels
}

variable "spacelift_stack_labels" {
  description = "Stack labels"
  type        = set(string)
}
