class: pic
# Modelos de datos: estructurado, no estructurado y semiestructurado

![Data models](images/data-models.png)

---
class: pic

![Structured data](images/structured.png)
---
## Modelos de datos estructurados
.concept[
    Datos que cuentan con modelo de datos (conceptual, lógico y físico),un esquema, así como lenguajes para consulta y gestión de la información. Generalmente asociados con sistemas de tipo OLTP. Las bases de datos relacionales son las más representativas de este formato, sin embargo existen otros como modelos de datos orientados a objetos o jerárquicos. 
]
- Estructura rígida, emplea atributos con tipo de dato definido.

- Entidades del mismo grupo (p.e. tabla) comparten los mismo atributos.

- Generalmente tienen una representación tabular (renglones y columnas).

- Requieren de la definición e implementación del esquema de la base de datos previo a almacenar documento.

- Los cambios al modelo de datos implican ajustes a las estructuras (conceptual, lógica y física).
---

## Datos estructurados: fuentes

- Aplicaciones
    - Sistemas transaccionales (POS, ERP, CRM)
    - Sistemas de soporte a la operación
    - Formularios en línea 

- Máquinas
    - Kioskos (autoservicio)
    - Sensores
    - Dispositivos industriales

---
## Modelo base de datos relacional: análisis y reportes

- El data warehouse es un sistema para reportes y análisis de datos

- Considerado el componente central para inteligencia de negocio

- Las bases de datos relacionales son una fuente de datos común para el Data Warehouse

---
class: pic
![Unstructured data](images/unstructured.png)
---

## Modelos de datos no estructurados
.concept[
    Para efectos de este módulo, consideramos que un modelo de datos es no estructurado cuando carece de abstracciones para representar u obtener de forma directa información que es relevante para nuestros fines.
]

- En este caso consideramos que la información se encuentra incrustada en un contendor (referido como blob en algunos contextos) el cual tiene una estructura definida.

- Carece de atributos o tipos de datos.

- La información no está almacenada de forma que pueda accederse (o modificarse fácilmente) por aplicaciones.

- Ejemplos: 
    - texto libre
    - contenido de gráficos, audio y video
    - contenido de documentos empresariales, mensajes de correo electrónico

---

## Datos no estructurados: fuentes

- Contenido generado por personas en las siguientes herramientas
    - Correo electrónico
    - Documentos con texto: noticias, documentos académicos
    - Documentos web: blogs, wikis,
    - Audio y video: podcasts, v-logging (p.e. YouTubers)
    - Redes sociales
    - Aplicaciones de mensajería
    - Micrófonos de uso personal
    - Cámaras y videocámaras de uso personal
    - Aplicaciones de videoconferencias
- Contenido generado por máquinas con las siguientes tecnologías:
    - Scanners (texto e imágenes)
    - Micrófonos de reconocimiento
    - Cámaras y videocámaras de reconocimiento
---
## Modelos de datos no estructurados: retos

- Históricamente ha sido difícil analizar los datos no estructurados

- La diversidad de formatos representa un reto para las herramientas convencionales de software  para ingestar, procesar y analizar

- Su falta de estructura interna implica la aplicación de procesos de transformación para emplearse con sistemas convencionales de minería de datos

- El análisis de datos no estructurados ha sido posible gracias a la integración de tecnologías de inteligencia artificial y aprendizaje de máquina (machine learning) a herramientas de análisis de datos

---

## Modelos de datos no estructurados: presencia

- Los datos no estructurados representan la mayoría de la información de las organizaciones

- EMC estimó el crecimiento de datos no estructurados de 2010 a 2020 sería de 50 veces, representando 40 zettabytes


---
class: pic
![Unstructured data](images/semistructured.png)
---
## Modelos de datos semiestructurados
.concept[
    Cuentan con estructura flexible. Generalmente organizada por entidades las cuales pueden diferir en sus atributos.
]
---

## Datos semiestructurados: fuentes
- Aplicaciones

- Máquinas
    - Sensores (temperatura, proximidad, presión, iluminación, humo, gas, alcohol)
---
## HTML: Hypertext Markup Language
.concept[
    El lenguaje de markup estándar para documentos diseñados para desplegarse en un browser Web. Consta de elementos y se asiste hojas de estilo y código (Javascript, generalmente) para desplegar la información.
]
- Ideado por Tim Berners-Lee entre 1980 y 1990.
- Markup: Sistema para anotar un documento de forma que se pueda distinguir del texto.
- Estándar abierto admistrado por el W3C: https://html.spec.whatwg.org/

??? 

note
https://en.wikipedia.org/wiki/HTML
---
## XML: Extensible Markup Language
.concept[
    Lenguaje de markup que define una serie de reglas para codificar documentos en un formato que sea legible por personas y por máquinas.
]
- Estándar abierto administrado por el W3C: https://www.w3.org/XML/

- XPath, parte del estándar de XSLT, puede ser empleado para navegar en elementos de un documento XML https://www.w3.org/TR/1999/REC-xpath-19991116/

- XQuery es un lenguaje para consultas de documentos XML https://www.w3.org/XML/Query

???

note
https://en.wikipedia.org/wiki/XML
---
## Ejemplo de documento XML
Ejemplo de documento XML
```xml
<xml>
    <person id="1223">
        <name>Alice</name>
        <age>43</age>
        <bio>
            <![CDATA[Alice is an 
            experienced software developer -> software engineer.]]>
        </bio>
    </person>
</xml>
```
---
## JSON: JavaScript Object Notation
.concept[
    Estándar de formato de archivos e intercambio de datos abierto que emplea texto legible para humanos para almacenar y transmitir objetos de datos.
]
- Especificado por Douglas Cockford a inicios de 2000.

- Formato predominante (junto con XML) para intercambiar datos en Internet.

- Derivado de JavaScript, sin embargo es agnóstico al lenguaje.

- JSONiq: es un lenguaje de consulta para JSON, basado en XQuery. Cabe destacar que estatus del estándar es borrador. https://www.w3.org/2011/10/integration-workshop/p/Documentation-0.1-JSONiq-Article-en-US.pdf

---
## Ejemplo de documento JSON
```json
{
    "person": {
        "name": "Alice",
        "age": "43",
        "bio": "Alice is an 
            experienced software developer -> software engineer."
        }
    }
}
```