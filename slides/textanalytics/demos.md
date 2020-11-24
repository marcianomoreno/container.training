# Demos
- Entornos: Ambiente de desarrollo local, ambiente de desarrollo prueba Ubuntu, GitHub, DockerHub, Azure
- Stanford Core NLP
---
## Stanford CoreNLP
.concept[
    Es una herramienta integral para procesamiento de lenguaje natural en Java. CoreNLP habilita a usua usuarios a derivar anotaciones linguísticas para texto, incluyendo fronteras de tokens y enunciados, partes del discurso, entidades nombradas, valores numéricos y de tiempo, análisis gramatical de dependencias y de integridad, coreferencias, sentimiento y atribuciones a comentarios.
]
- Lenguajes soportados por Stanford CoreNLP:
    - Arábico.
    - Chino.
    - Inglés.
    - Francés.
    - Alemán.
    - Español.
---
## Arquitectura Stanford CoreNLP
.concept[
    La herramienta principal de CoreNLP es el pipeline. El pipeline toma texto crudo, ejecuta una serie de anotadores de NLP en el texto y produce una serie de anotaciones.
]
---
## Objeto principal: CoreDocument
.concept[
    Los pipelines de CoreNLP producen objetos denominados CoreObject que contienen toda la información de anotaciones, la cual es accesible por medio de un API sencillo y es serializable a Google Protocol Buffer.
]
---
## Anotaciones producidas por CoreNLP
- Partes del discurso (Parts of Speech, POS).
- Entidades nombradas.
- Análisis gramatical de dependencias.
- Coreferencias.
---
## Inicio rápido
- Descarga de CoreNLP http://nlp.stanford.edu/software/stanford-corenlp-latest.zip 
- Descarga de jars correspondientes a los modelos con los que se requiera trabajar, los cuales deben estar en el directorio de la distribución.
    - Español: http://nlp.stanford.edu/software/stanford-corenlp-4.2.0-models-spanish.jar
- Incluir el directorio de la disribución en CLASSPATH.
- Ejecutar un pipeline
```java
java -Xm5g edu.stanford.nlp.pipeline.StanfordCoreNLP -file input.txt
```
---
## Lenguajes de programación y sistemas operativos
.concept[
    Stanford CoreNLP está escrito en Java, las versiones más recientes requieren de Java 1.8 o superior. Se requiere tener Java instalada para correr CoreNLP Es posible interactuar con CoreNLP por medio de la línea de comando o su servicio Web. Un gran número de usuarios trabajan con CoreNLP mientras escriben su propio código en JavaScript, Python o algún otro lenguaje.
]
---
## Licencia de Stanford CoreNLP
.concept[
    Stanford CoreNLP está licenciado bajo GNU General Public License v3 o posterior. 
]
- Permite el uso libre.
- No admite el uso en software propietario que se distribuya a otros.
- Stanford ofrece una licencia comercial para quienes deseen integrar CoreNLP en software propietario.
---
## Etiquetador de partes del discurso (POS Tagger)
.concept[
    Un etiquetador de partes del discurso es una pieza de software que lee texto en una lenguaje y asigna partes del discurso a cada palabra (o a un token), tal como sustantivo, verbo, adjetivo, etc.
]
- 
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

## Hello Docker!
docker run hello-world
---

## Construir imagen corenlp
docker image build -f Dockerfile-alpine .
---

## Ejecutar contenedor con corenlp

docker container run -d -p 9000:9000 --mount type=bind,src=/home/marcianomoreno/src/container.training/ta/stanford-core-nlp,destination=/stanford-core-nlp --name corenlp 392749505716
---
## Conectarse a contenedor corenlo
docker container exec -it corenlp /bin/bash

## Configurar Git
git config --global user.email "marciano_moreno@outlook.com"
git config --global user.name "Marciano Moreno"

## Visual Studio Code
- Descargar repositorio container.training
- Extensiones: Docker
- 