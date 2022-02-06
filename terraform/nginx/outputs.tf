output "ec2_global_ips" {
  value = ["${aws_instance.this[0].public_ip}"]
}
