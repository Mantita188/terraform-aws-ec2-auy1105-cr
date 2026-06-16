variable "environment" {
  type        = string
  description = "Ambiente de despliegue (ej: dev, prod)"
}

variable "vpc_id" {
  type        = string
  description = "ID de la VPC donde se asociara el Security Group"
}

variable "public_subnet_id" {
  type        = string
  description = "ID de la subred publica donde se alojara la instancia"
}

variable "alb_security_group_id" {
  type        = string
  description = "ID del Security Group perimetral del ALB para habilitar el trafico cruzado"
}

variable "ami_id" {
  type        = string
  description = "ID de la AMI de Ubuntu para la instancia"
}

variable "instance_type" {
  type        = string
  description = "Tipo de instancia EC2 (ej: t2.micro)"
}