output "ec2instance" {
  value = aws_instance.prometheus-grafana.public_ip
}
