resource "random_pet" "this" {
  length = 5
}


resource "aws_instance" "dev_node" {
    instance_type = "t2.large"
  ami = data.aws_ami.server_ami.id


    root_block_device {
        volume_size = 10
    }
}

data "aws_ami" "server_ami" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
}

resource "aws_s3_bucket" "exampletestingtginfracost" {
  bucket = "exampletestingtginfracost"

  tags = {
    Name        = "exampletestingtginfracost"
    Environment = "Dev"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Consider specifying a version constraint for better stability.
    }
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "default"
}
