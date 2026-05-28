output "instance_id" {
  value       = aws_instance.web.id
  description = "ID de la instancia EC2"
}

output "instance_ip" {
  value       = aws_instance.web.public_ip
  description = "IP publica de la EC2"
}