# Demos
- Entornos: Ambiente de desarrollo local, ambiente de desarrollo prueba Ubuntu, GitHub, DockerHub, Azure
- Stanford Core NLP
---
## GitHub
- Cuenta de GitHub: marcianomoreno
- URL: https://github.com/marcianomoreno/container.training
- Repositorio: container.training
- Recursos:
    - Directorio ta
    - Dockerfile-alpine
    - Ejemplos staford-core-nlp
---
## Docker Hub
- Cuenta de Docker Hub: marcianomoreno
- URL: https://hub.docker.com/repository/docker/marcianomoreno/analytics.training
- Repositorio: analytics.training
- Recursos:
    - "tag" (como Docker nombra a las imagenes): corenlp-release

## Crear una imagen de Docker con Stanford CoreNLP
- Tomar como referencia Dockerfile de contenedor existente: https://hub.docker.com/r/graham3333/corenlp-complete
- Repositorio privado container.training
- 
- Cuenta de Docker Hub con respositorio público
- Repositorio público en Docker Hub
- Crear build automático
- Usar respositorio existente de github
- Crear Dockerfile-alpine
- Hacer commit y push de Dockerfile-alpine a repositorio remoto
- Construir imagen de Docker con extensión de Docker de VSCode
- 
## Ejecutar una imagen de Docker

---
- 
## Publicar una imagen a Docker Hub
- Repositorio público: marcianomoreno/analytics.training
- Configuración de builds automáticos:
    - Repositorio fuente: marcianomoreno.container.training
    - Build rule:
        Source type: Branch
        Source: master
        Docker tag: release
        Dockerfile location: Dockerfile: alpine
        Build Context: /ta
        Auto build= checked
        Build caching: checked
---
## Ejecutar contenedor de NLP en Azure 
- Referencia: https://docs.docker.com/engine/context/aci-integration/
- Suscripción de Azure: azure-subscription-1
- Crear Resource Group: nlp-training-1
- Crear contexto en docker:
docker context create aci nlp-training-context --description "Context for NLP training in Azure" --resource-group nlp-training-1 --subscription-id azure-subscription-1
- Activar contexto de docker:
docker context use nlp-training-context
-Ejecutar un contenedor:
docker run marcianomoreno/analytics.training:release

## Crear usb booteable con Linux
https://ubuntu.com/tutorials/create-a-usb-stick-on-windows#1-overview
https://ubuntu.com/tutorials/try-ubuntu-before-you-install#5-enjoy-ubuntu
https://rufus.ie/
https://github.com/pbatard/rufus/issues/134


