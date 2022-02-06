#resource "aws_network_interface" "main" {
#  count           = "${var.count}"
#  subnet_id       = "${element(var.subnet_ids, count.index)}"
#  private_ips     = ["${cidrhost(element(var.subnet_cidr, count.index), 1)}"]
#  security_groups = ["${aws_security_group.zookeeper-server.id}"]
#}

resource "aws_instance" "zookeeper" {
  count                   = "${var.size_of_cluster}"
  ami                     = "${var.ami}"
  instance_type           = "${var.instance_type}"
#  ebs_optimized           = "${var.ebs_optimized}"
#  disable_api_termination = "${var.disable_api_termination}"
#  monitoring              = "${var.monitoring}"
#  user_data_base64        = "${var.user_data_base64}"


#  tags {
#    Name = "${var.name}-zookeeper-${size_of_cluster.index}"
#  }
}





