provider "aws" {
    region ="us-west-2"
    access_key = "access key"
    secret_key = "secret key"
}
#CREATE AWS SECURITY GROUP TO ALLOW PORT 80,22,443
resource "aws_security_group" "allow_http_ssh" {
  name        = "allow_http"
  description = "Allow http inbound traffic"


  ingress {
    description = "http"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
 
  }
ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
 
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "allow_http_ssh"
  }
}
resource "aws_instance" "dek" {
     ami = "ami-0efcece6bed30fd98"
     instance_type = "t2.medium"
     key_name = "keyname"
}
output "public_ip2" {
       value= aws_instance.dek.public_ip
}
