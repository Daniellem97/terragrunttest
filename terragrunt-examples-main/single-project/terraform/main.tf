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

resource "aws_s3_bucket" "my_bucket" {
  bucket = "mybggip" # Bucket names must be unique across all existing bucket names in Amazon S3
  acl    = "private" # Access control list

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "spacelift_stack" "thfdafdais" {
 github_enterprise {
    namespace = "Daniellem97"
  }

branch = "main"
name = "labelsdebugnew"
repository = "securitygroups"
}

