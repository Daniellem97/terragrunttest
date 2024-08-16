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

terraform {
  backend "s3" {}
}

provider "spacelift" {}

provider "aws" {
  region = "us-west-2"  # You can change the region as needed
}

resource "spacelift_stack" "this" {
 github_enterprise {
    namespace = "Daniellem97"
  }

branch = "main"
repository = "securitygroups"
name            = var.spacelift_stack_name
labels = var.spacelift_stack_labels
}

variable "spacelift_stack_name" {
  description = "name"
  type        = string
}

variable "spacelift_stack_labels" {
  description = "name" 
  type        = set(string) 
}

