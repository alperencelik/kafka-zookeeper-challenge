output "active-kafka" {
  value = aws_instance.active-kafka[0].public_ip
}
