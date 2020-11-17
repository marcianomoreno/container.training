# Modelos de datos

- Estructurados

- No estructurados

- Semi estructurados


---

## Modelos de datos estructurados
.concept[
    Datos que cuentan con modelo de datos (conceptual, lógico y físico),un esquema, así como lenguajes para consulta y gestión de la información. Generalmente asociados con sistemas de tipo OLTP. Las bases de datos relacionales son las más representativas de este formato, sin embargo existen otros como modelos de datos orientados a objetos o jerárquicos. 
]
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
## Modelo de bases de datos relacionales: Propiedades de transacciones ACID
- Las bases de datos relacionales garantizan las cuatro propiedades de transacciones de bases de datos:
    - ACID = Atomicity + Consistency + Isolation + Durability

|Propiedad|Descripción|
|---|---|
|Atomicity|Se garantiza que todas las operaciones de la transacción sucede o no ocurre ninguna|
|Consistency|Se garantiza que todos los datos estarán en un estado consistente|
|Isolation|Se garantiza que ninguna transacción será afectada por otras|
|Durability|Cuando se confirma una transacción, se garantiza que permanecerá en el sistema|
???
https://database.guide/what-is-acid-in-databases/#:~:text=In%20database%20systems%2C%20ACID%20(Atomicity,occur%20while%20processing%20a%20transaction.
https://www.researchgate.net/post/What_is_the_Best_Database_Structure_for_Big_Data
---
class: extra-details

## Modelo de base de datos relacional: concepto
- Enfoque para administrar datos utilizando una estructura y lenguaje consistente con la lógica de predicados de primer orden

- Descrita en 1969 por Edgar F. Codd

- Los datos se representan en tuplas, agrupadas en relaciones

- Una base de datos organizada en términos de un modelo relacional se conoce como base de datos relacional

---
class: extra-details
## Modelo de base de datos relacional: declarativo

- El modelo relacional provee de un método declarativo para especificar datos y consultas

- Los usuarios especifican directamente qué información contendrá la base de datos y qué información desea extraer de ella

    - Los usuarios no especifican el control de flujo para obtener la información de interés

---

## Modelo de base de datos relacional: lenguajes de definición y consulta

- SQL (Structured Query Language) es un lenguaje de dominio específico empleado para administrar y obtener datos de bases relacionales

- SQL introdujo la capacidad de acceder a múltiples registros por medio de un comando y no requiere especificar la forma de acceder a la información

- SQL cuenta con un lenguaje de definición (DDL, Data Definition Language) y otro de consulta (DQL, Data Query Language)


---
## Modelo base de datos relacional: análisis y reportes

- El data warehouse es un sistema para reportes y análisis de datos

- Considerado el componente central para inteligencia de negocio

- Las bases de datos relacionales son una fuente de datos común para el Data Warehouse

---

## Modelos de datos no estructurados

- Información que no tiene un modelo de datos predefinido o no está organizada de manera estructurada

- Ejemplos: 
    - texto libre
    - contenido de gráficos, audio y video

- El texto libre predomina en esta categoría, sin embargo incluye datos tales como fechas y números

- Texto no estructurado: contenido de documentos empresariales, mensajes de correo electrónico

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


## Modelos de datos semiestructurados
---

## Datos semiestructurados: fuentes
- Aplicaciones

- Máquinas
    - Sensores (temperatura, proximidad, presión, iluminación, humo, gas, alcohol)
---
## HTML - Hypertext Markup Language
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
## XML
.concept[
    Lenguaje de markup que define una serie de reglas para codificar documentos en un formato que sea legible por personas y por máquinas.
]
- Estándar abierto administrado por el W3C: https://www.w3.org/XML/
- Cuenta con la especificación de un lenguaje para consultas (XML Query) https://www.w3.org/XML/Query

???

note
https://en.wikipedia.org/wiki/XML
---
## JSON
.concept[
    Estándar de formato de archivos e intercambio de datos abierto que emplea texto legible para humanos para almacenar y transmitir objetos de datos.
]
- Especificado por Douglas Cockford a inicios de 2000.
- Reemplazo a XML en AJAX.
- Derivado de JavaScript, sin embargo es agnóstico al lenguaje.

---
## NoSQL
- key/value
- wide column
- graph
- document
---
## MongoDB
---
## Neo4J
---
## Cassandra
