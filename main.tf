resource "aws_instance" "testing" {
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
  region = "us-west-1"
   access_key = "AKIAQQSWUB4XTE4OJJH7"
  secret_key = "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"

  
}
