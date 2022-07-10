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
   shared_credentials_file = "/home/gauravsingh/.aws/credentials"
   shared_config_files="/home/gauravsingh/.aws/config"
   profile = "default"
}
