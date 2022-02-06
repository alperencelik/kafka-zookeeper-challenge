output "active-kafka-0" {
  value = aws_instance.active-kafka[0].private_ip
}

output "active-kafka-1" {
  value = aws_instance.active-kafka[1].private_ip
}

output "active-kafka-2" {
  value = aws_instance.active-kafka[2].private_ip
}

output "standby-kafka-0" {
  value = aws_instance.standby-kafka[0].private_ip
}

output "standby-kafka-1" {
  value = aws_instance.standby-kafka[1].private_ip
}

output "standby-kafka-2" {
  value = aws_instance.standby-kafka[2].private_ip
}
