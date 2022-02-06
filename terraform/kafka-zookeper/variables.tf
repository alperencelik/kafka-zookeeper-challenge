variable "ami_image_id" {
  description = "Centos 7 ami id"
  type = string
  default = "ami-05788af9005ef9a93"
}

variable "ssh_key_name" {
  description = "The name of an EC2 key-pair"
  type        = string
  default     = "alp-eren"
}


