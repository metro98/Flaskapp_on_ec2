provider "aws" {
    region = "us-east-1"
  }

  resource "aws_instance" "web" {
    ami           = "ami-01816d07b1128cd2d" # Amazon Linux 2 AMI
    instance_type = "t2.micro"

    tags = {
      Name = "DockerWebApp"
    }

    key_name = "ronin_key"

    security_groups = [aws_security_group.web_sg.name]
  }

  resource "aws_security_group" "web_sg" {
    name        = "web-sg"
    description = "Allow HTTP traffic"

    ingress {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
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
  }
