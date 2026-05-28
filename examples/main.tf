# Ejemplo de uso del módulo de cómputo
module "computo_ejemplo" {
  source    = "github.com/Mantita188/terraform-aws-ec2-auy1105-cr?ref=main"
  vpc_id    = "vpc-123456"
  subnet_id = "subnet-123456"
  alb_sg_id = "sg-123456"
}