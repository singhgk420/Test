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
     access_key = "AKIAQQSWUB4XTDM5UIUI"
     secret_key = "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"  

  region = "us-east-1"
}