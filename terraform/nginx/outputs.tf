output "ec2_global_ips" {
  value = ["${aws_instance.main.*.public_ip}"]
}
