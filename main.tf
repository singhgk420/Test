resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  }
 provider "aws" {
  region = "us-east-1"
   access_key = "AKIAQQSWUB4XYJXRP2FB"
  secret_key = "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"

  
}
