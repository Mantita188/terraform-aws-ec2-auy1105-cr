resource "aws_security_group" "web" {
  name        = "${var.environment}-sg-ec2"
  description = "Permite trafico HTTP entrante restringido solo desde el ALB"
  vpc_id      = var.vpc_id

  ingress {
    description     = "HTTP desde el ALB"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [var.alb_security_group_id] # Filtro perimetral estricto
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.environment}-sg-ec2"
  }
}

resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [aws_security_group.web.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install -y apache2
              sudo systemctl start apache2
              sudo systemctl enable apache2
              echo "<h1>Despliegue Exitoso - Evaluacion 2 Ccon modularidad limpia</h1>" | sudo tee /var/www/html/index.html
              EOF

  tags = {
    Name        = "${var.environment}-web-server"
    Environment = var.environment
  }
}