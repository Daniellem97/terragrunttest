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

terraform {
  backend "s3" {}
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
