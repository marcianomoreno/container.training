# Demos
- Entornos: Ambiente de desarrollo local, ambiente de desarrollo prueba Ubuntu, GitHub, DockerHub, Azure
- Stanford Core NLP
---
## Stanford CoreNLP
.concept[
    Es una herramienta integral para procesamiento de lenguaje natural en Java. CoreNLP habilita a usuarios a derivar anotaciones linguísticas para texto, incluyendo fronteras de tokens y enunciados, partes del discurso, entidades nombradas, valores numéricos y de tiempo, análisis gramatical de dependencias y de integridad, coreferencias, sentimiento y atribuciones a comentarios.
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
    La abstracción principal de CoreNLP es el pipeline. El pipeline toma texto crudo, ejecuta una serie de anotadores de NLP en el texto y produce una serie de anotaciones.
]
---
## Objeto principal: CoreDocument
.concept[
    Los pipelines de CoreNLP producen objetos denominados CoreObject que contienen toda la información de anotaciones, la cual es accesible por medio de un API sencillo y es serializable a Google Protocol Buffer.
]
---
## Soporte a español en Stanford CoreNLP
- Para usar español en el pipeline se requiere añadir el archivo de propiedades StanfordCoreNLP-spanish.properties que forma parte del jar de modelos en español.

- Los modelos en español de Stanford CoreNLP fueron generados, después de intensas modificaciones, a partir de:
    - AnCora Spanish 3.0 corpus: Este corpus consta de 17,000 enunciados, obtenidos de noticias de España y el corpus 3LB.
    - DEFT Spanish Treebank V2 (LDC2015E66). Incluye la fuente de información completa Spanish Newswire Treebkanc y el archivo del foro Latin American Spanish Dicussion Forum Treebank.
        - Estos datos fueron añadidos para entrenar los nuevos modelos en español liberados en CoreNLP 3.7.0.
---
## Soporte a español en Stanford CoreNLP

- La generación de tokens en español es similar a la de inglés con algunas excepciones, destacando:
    - Los pronombres clíticos están separados de sus verbos.Los verbos en español pueden incluir pronombres clíticos en algunos casos (cuando el verbo es un gerundio, imperativo no negativo o forma infinida). El tokenizador separa los pronombres anexos al final de estos tipos de verbos en tokens separados.
    P.e. negarse se tokeniza a negar se, dos tokens separados.
    - Las contracciones se expanden a múltiples palabras. Las contracciones en español incluyen p.e. al, del conmigo, consigo. El tokenizer expande estas contracciones en a su forma de diccionario: a el, de el, con mí, con sí, etc. Estas expansiones son incorrectas gramáticamente pero son útiles para todas las tareas que siguen de la tokenización (tagging y parsing, por ejemplo).
    - Los paréntesis se despliegan =LRB= y =RRB=.
    - Todas las formas con comilla sencilla se normalizan a '; todas las formas de comillas dobles se normalizan a ".
    - Los guiones largos (em dash y en dash) se normalizan al guión -.

---
## Soporte a español en Stanford CoreNLP
- Se espera que las entradas estén codificadas en UTF-8.

- El analizador de partes del discurso (POS) emplea una versión simplificada del conjunto de etiquetas de AnCora 3.0 y DEFT Spanish Treebank. Stanford CoreNLP cuenta con 85 etiquetas que permiten tener un tamaño manejable con una precisión útil.
    - Las etiquetas están diseñadas para ser compatibles con el estándar EAGLES https://web.archive.org/web/20160325024315/http://nlp.lsi.upc.edu/freeling/doc/tagsets/tagset-es.html
    - Ejemplos de etiquetas: Adjetivos, conjunciones, determinadores, puntuación, sustantivos, pronombres, verbos, fechas, numerales, etc.

---
## Soporte a español en Stanford CoreNLP 
- De momento no se cuenta con un analizador de dependencias en español.
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
- El etiquetador puede ser reentrenado en cualquier lenguaje con la provisión de un texto de entrenamiento con anotaciones de POS para el lenguaje.
- Las abreviaturas del modelo en español usa el estándar UD (v2) tagset  https://universaldependencies.org/u/pos/
- El archivo README-Models.txt en el directorio models provee de más información respecto al conjunto de etiquetas para cada lenguaje.
- El código del etiquetador tiene una licencia dual: GNU General Public Licence (v2 o posterior) y licenciamiento para uso comercial en software propietario por solicitud.
---
## Entidades nombradas
.concept[
    Stanford NER es una implementación en Java de un reconocedor de entidades nombradas (Named Entity Recognizer, NER). Un NER etiqueta secuencias de palabras en un texto las cuales son nombres de entidades tales como el nombre de una persona, empresa, gen o proteína. 
]
- Cuenta con extractores de características para NER.
- Cuenta con opciones para definir extractores de características personalizados.
- Los NERs en inglés incluyen 3 clases: PERSON, ORGANIZATION, LOCATION.
- Cuenta con otros modelos para distintos lenguajes y circunstancias.

---
## Analizador de dependencias (Stanford parser)
.concept[
    Un analizador de dependencias es un programa que analiza la estructura de los enunciados, por ejemplo qué grupos de palabras trabajan juntos (como parte de una frase), qué palabras son el sujeto y qué palabras el objeto de un verbo].
- Los analizadores de dependencias usan conocimiento del lenguaje adquirido de enunciados examinados a mano para tratar de producir el análisis más probable de nuevos enunciados.
- Los analizadores estadísticos tienen una tasa de error, en general trabajan bien.
- Su desarrollo fue uno de los grandes avances en procesamiento de lenguaje natural en la década de 1990.
---
## Red neuraonal para análisis de dependencias (NN dependency parser)
.concept[
    Un analizador de dependencias se concentra en la estructura gramatical de un enunciado, estableciendo relaciones entre palabras "protagónicas" y palabras que modifican a dichos "protagonistas". Los analizadores identifican la naturaleza de la modificación entre el protagonista y el modificador.
] 
- Stanford ha desarrollado un analizador extremadamente eficiente que produce análisis de dependencias con tipos de enunciados de lenguaje natural. 
- El analizador está implementado con una red neuronal que acepta incrustaciones de palabras (word embedding) como entrada.
- Este analizador soporta inglés y chino. En un futuro se soportarán otros lenguajes.
---

## Resolución de coreferencias
.concept[
    Un sistema de resolución de coreferencias consta de modelos determinísticos de coreferencias que integran información léxica, sintáctica, semántica y de discurso.
]
- Los modelos usan información global del documento al compartir atributos de menciones, tales como género y cantidad, en las menciones del mismo cluster.
---
## Análisis de sentimiento
.concept[
    El modelo de análisis de sentimiento de Sanford emplea técnicas de aprendizaje profundo (deep learning) que construye representaciones de enunciados completos de acuerdo con su estructura (en vez de analizar las palabras por separado, ignorando su orden).
]
- El código original fue escrito en Matlab.
- Se reescribió el algoritmo en Java para permitir mayor facilidad y escalabilidad.
- El modelo actual está integrado en Stanford CoreNLP (a partir de la versión 3.3.0)
```java
java -cp "*" -mx5g edu.stanford.nlp.sentiment.SentimentPipeline -file entrada.txt
java -cp "*" -mx5g edu.stanford.nlp.sentiment.SentimentPipeline -stdin
```
---
## Análisis de sentimiento y CoreNLP
Se incluye una herramienta de evaluación con la distribución
```java
java edu.stanford.nlp.sentiment.Evaluate edu/stanford/nlp/models/sentiment/sentiment.ser.gz test.txt
```
Los modelos pueden ser reentrenados por medio del siguiente comando empleando un dataset en formato PTB.
```java


java -mx8g edu.stanford.nlp.sentiment.SentimentTraining -numHid 25 -trainPath train.txt -devPath dev.txt -train -model model.ser.gz
```

- Formato PTB: Proviene del dataset Penn Treebank (PTB), el cual es empleado ampliamente en machine learning para investigaciones de procesamiento de lenguaje natural.
---

## Extracción de información abierta (open IE)
.concept[
    Extracción de información abierta se refiere a la extracción de tuplas de relación, típicamente relaciones binarias, a partir de texto crudo, tal como (Bill Gates; fundó; Microsoft). La principal diferencia con otras técnicas de extracción es que el esquema de estas relaciones no necesita especificarse por anticipado.
]
- Típicamente el nombre de la relación es el texto que enlaza los dos argumentos.
Por ejemplo: Pedro Infante nació en México crearía la terna (Pedro Infante; nació en; México), correspondiendo a la relación de dominio abierto 
```
nacio-en(Pedro-Infante, México)
```
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