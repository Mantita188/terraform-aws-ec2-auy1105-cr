# Módulo de Cómputo AWS - AUY1105

## Objetivos del Repositorio
Desacoplar y modularizar la lógica de cómputo para el despliegue elástico de servidores web en AWS de forma estandarizada.

## Propósito General
Este código de Terraform automatiza la creación de instancias EC2 basadas en Amazon Linux 2, configurando sus respectivos grupos de seguridad (Security Groups) con reglas de acceso perimetral restrictivas (HTTP restringido al ALB y SSH para administración). Además, inicializa de forma automática el servidor web Apache mediante scripts de User Data.

## Instrucciones Básicas de Uso
1. Invoque este módulo desde el orquestador principal.
2. Inyecte de forma obligatoria las variables requeridas: `vpc_id`, `subnet_id` y `alb_sg_id`.