output "active-kafka" {
  value = aws_instance.active-kafka[0].public_ip
}

output "active-kafka-1" {
  value = aws_instance.active-kafka[1].public_ip
}
