variable "vpc_id" {
  type        = string
  description = "ID de la VPC provista por el modulo de redes"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID publica para la EC2"
}

variable "alb_sg_id" {
  type        = string
  description = "Security Group del ALB para validar las reglas ingress"
}

variable "key_name" {
  type        = string
  default     = "vockey"
  description = "Llave SSH obligatoria de AWS Learner Lab"
}