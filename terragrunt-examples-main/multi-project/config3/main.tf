provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {}
}

resource "aws_security_group" "this" {
  name   = "this"
  vpc_id = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "security_group1"
    env   = "dev"
    owner = "config3"
  }
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

resource "aws_instance" "dev_node" {
    instance_type = "t2.micro"
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
