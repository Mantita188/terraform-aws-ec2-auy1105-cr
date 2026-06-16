# Changelog
Todas las modificaciones de este módulo están documentadas en este archivo de manera histórica.

## [0.1.1] - 2026-06-15
### Added
- **Orquestación Modular Remota:** Implementación de llamadas dinámicas a submódulos versionados e independientes alojados en GitHub (`vpc`, `ec2`, `storage`) utilizando tags semánticos estables.
- **Application Load Balancer (ALB):** Integración nativa del balanceador de carga público con distribución en alta disponibilidad utilizando múltiples Zonas de Disponibilidad (AZs).
- **Inyección de Dependencias Dinámica:** Enganche automatizado del Target Group hacia la capa de cómputo remota mediante outputs en tiempo de ejecución.
- **Validación Continua (CI):** Integración del pipeline automatizado en GitHub Actions para el análisis estático sintáctico y de formato (`terraform fmt` y `validate`) del orquestador raíz.

### Fixed
- **Resolución de Conflictos de Submódulos:** Actualización de la referencia del módulo de cómputo a la versión estable `v0.1.4` para corregir de raíz el error de indexación fantasma en GitHub Actions.
- **Seguridad del Estado Local:** Ajuste estricto en las exclusiones del archivo `.gitignore` para resguardar los archivos `.tfstate` locales de la infraestructura.

## [1.0.0] - 2026-05-28
### Added
- Versión inicial funcional para la Evaluación 2 con estructura monolítica base.