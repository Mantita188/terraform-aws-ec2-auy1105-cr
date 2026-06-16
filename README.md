# Módulo de Cómputo AWS EC2 - AUY1105

## Objetivos del Repositorio
Desacoplar el aprovisionamiento del servidor web y sus políticas de acceso perimetrales de la infraestructura base de redes, garantizando la inyección de dependencias modular.

## Propósito General
Aprovisiona una instancia virtual EC2 corriendo Apache Web Server mediante `user_data`. Incorpora un diseño de aislamiento de seguridad perimetral a nivel de capa de red (Security Group), configurado estrictamente para no recibir conexiones públicas directas, sino únicamente peticiones HTTP validadas y distribuidas desde el Application Load Balancer (ALB).

## Requisitos (Inputs)
| Nombre | Descripción | Tipo | Obligatorio |
| :--- | :--- | :---: | :---: |
| `environment` | Ambiente de despliegue (ej: dev, prod) | `string` | Sí |
| `vpc_id` | ID de la VPC de red de destino | `string` | Sí |
| `public_subnet_id` | ID de la subred pública donde reside la máquina | `string` | Sí |
| `alb_security_group_id` | ID del Security Group del ALB (Origen permitido) | `string` | Sí |
| `ami_id` | ID de la imagen base de sistema (AMI Ubuntu) | `string` | Sí |
| `instance_type` | Tamaño y capacidad de cómputo (ej: t2.micro) | `string` | Sí |

## Salidas (Outputs)
| Nombre | Descripción |
| :--- | :--- |
| `instance_id` | ID único de la instancia EC2 para registros de targets |
| `instance_public_ip` | Dirección IP pública de la instancia provisionada |