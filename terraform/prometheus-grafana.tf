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

module "ec2_instance" "prometheus-grafana"{
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  associate_public_ip_address = true

  name = "prometheus-grafana"

  ami                         = "ami-05788af9005ef9a93"
  instance_type               = "t3.medium"
  key_name                    = "alp-eren"
  monitoring                  = false

}
