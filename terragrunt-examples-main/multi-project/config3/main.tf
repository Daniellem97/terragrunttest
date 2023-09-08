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
