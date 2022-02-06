module "zookeeper-subnets" {
  source      = "github.com/terraform-kafka/terraform-aws-multi-az-subnets?ref=v0.0.1"
  name        = "broker-zookeeper-group"
  vpc_id      = "vpc-9d50fff4"
#  cidr_blocks = [
#    "172.20.132.0/27",
#    "172.20.132.32/27",
#    "172.20.132.64/27",
#  ]
}

module "zookeeper-cluster" {
  source      = "github.com/terraform-kafka/terraform-aws-zookeeper?ref=v0.0.1"
  name        = "zk"
  count       = 3
#  subnet_ids  = "${module.zookeeper-subnets.subnet_ids}"
#  subnet_cidr = "${module.zookeeper-subnets.subnet_cidr}"
  ami         = "ami-05788af9005ef9a93"
}




