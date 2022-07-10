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
    assume_role {
    role_arn     = "arn:aws:iam::035615149871:user/gaurav.admin"
    session_name = "SESSION_NAME"
    external_id  = "EXTERNAL_ID"
  }
  region = "us-east-1"
}