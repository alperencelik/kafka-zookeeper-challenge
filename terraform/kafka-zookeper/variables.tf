variable "count" {
  description = "Size of the Zookeeper cluster."
  default     = 3
}

variable "ami" {
  type        = string
  description = "The AMI to use for the instance."
  default     = "ami-05788af9005ef9a93"
}

variable "tags" {
  type        = map
  description = "Extra tags to add on the created subnets."
  default     = {}
}

variable "name" {
  type        = string
  default = "zookeeper"
}

variable "instance_type" {
  type = string
  default = "t3-small"
}


