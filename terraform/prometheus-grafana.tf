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

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"
  
  name = "prometheus-grafana"
  ami                         = "ami-05788af9005ef9a93"
  instance_type               = "t3.medium"
  key_name                    = "alp-eren"
  monitoring                  = false
  associate_public_ip_address = true
  vpc_security_group_ids = "sg-0e6eb7789ff4a10b4"

}
