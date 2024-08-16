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

resource "spacelift_stack" "this" {
 github_enterprise {
    namespace = "Daniellem97"
  }

branch = "main"
repository = "securitygroups"
name            = var.spacelift_stack_name
}

variable "spacelift_stack_names" {
  description = "name"
  type        = string
}

