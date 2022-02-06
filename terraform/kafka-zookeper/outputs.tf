output "active-kafka-0-ip" {
  value = aws_instance.active-kafka[0].public_ip
}
