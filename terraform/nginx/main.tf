terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-north-1"
}

resource "aws_instance" "nginx" {

  ami                         = var.ami_image_id
  instance_type               = "t3.medium"
  key_name                    = var.ssh_key_name
  monitoring                  = false
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-01b121550a99155d7"]
  
  tags = {
    Name ="nginx"
  }
  
  
  }
