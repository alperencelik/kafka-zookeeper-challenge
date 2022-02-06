variable "count" {
  description = "Size of the Zookeeper cluster."
  default     = 3
}

variable "subnet_ids" {
  type        = "list"
  description = "List of subnet ids. (the order should be the same of subnet_cidr var."
}

variable "subnet_cidr" {
  type        = "list"
  description = "List of subnet cidr."
}

variable "ami" {
  type        = "string"
  description = "The AMI to use for the instance."
}

variable "ebs_optimized" {
  description = "EC2 detailed monitoring."
  default     = true
}

variable "disable_api_termination" {
  description = ""
  default     = true
}

variable "monitoring" {
  description = ""
  default     = true
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

variable "user_data_base64" {
  type = "string",
  description =  ""
}
