resource "aws_key_pair" "ec2_key" {
  key_name   = "ec2_key"
  public_key = "${var.ec2_public_key}"
}

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "ap-southeast-2"
}

resource "aws_instance" "example_ec2" {
  ami           = "ami-04481c741a0311bbb"
  instance_type = "t2.micro"
  key_name = "ec2_key"
  vpc_security_group_ids = ["${var.default_security_group}"]
}

