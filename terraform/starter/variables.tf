variable "ec2_public_key" {}
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_vpc_id" {}
variable "default_security_group" {}

variable "ingressCIDRblock" {
  type = "list"
}
