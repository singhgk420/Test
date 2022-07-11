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
<<<<<<< HEAD
  provider "aws" {
     access_key = "AKIAQQSWUB4XTDM5UIUI"
     secret_key = "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"  
=======
 provider "aws" {
  region = "us-west-1"
 
>>>>>>> 1322c5237068d2ee6efe5b7845ed749e3e646eaf

   

  
}
