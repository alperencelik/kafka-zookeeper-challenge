variable "count" {
  description = "Size of the Zookeeper cluster."
  default     = 3
}

variable "ami" {
  type        = "string"
  description = "The AMI to use for the instance."
}

variable "tags" {
  type        = "map"
  description = "Extra tags to add on the created subnets."
  default     = {}
}

variable "name" {
  type        = "string"
  description = ""
}

variable "instance_type" {
  type = "string"
  description = ""
}


