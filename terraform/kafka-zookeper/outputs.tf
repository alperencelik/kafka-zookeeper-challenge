output "ec2instance" {
  value = aws_instance.active-kafka-${count.index}.public_ip
}


output "ec2instance" {
  value = aws_instance.active-kafka-${count.index}.private_ip
}
