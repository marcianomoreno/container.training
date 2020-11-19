# Tecnologías para datos no estructurados
.concept[
    Al trabajar en ambientes de Big Data, existen diversos formatos de datos. En algunos casos se soportan formatos como JSON o CSV para ciertos aspectos de la cadena de procesamiento de big data, sin embargo los formatos nativos de almacenamiento de big data ofrecen mayores beneficios.
]
- Formatos de big data: ORC, Avro, Parquet.
- Aspectos en común: Formato de almacenamiento nativo en HDFS, los archivos se pueden particionar en múltiples discos, cuentan con esquema.
---
## Formatos de texto plano en big data
|Formato big data|Descripción|
|---|---|
|Optimized Row Columnar (ORC)|Almacen de datos orientado a columnas, optimizado para tareas analíticas intensivas en lectura.|Avro|Marco de trabajo que incluye serialización de datos y llamadas a procedimientos remotos orientada a renglones. Utiliza JSON.|
|Parquet|Formato de archivos diseñado para almacenamiento orientado a columnas eficiente y ágil para archivos basados en renglones como CSV o TSV.|

???
- Formatos de representación
- Tecnologías de consulta
- Tecnologías de almacenamiento
- Tecnologías de procesamiento
---
## Parquet

---
## Texto plano
.concept[
    Los archivos de origen (raw files) pueden encontrarse en formatos como CSV. Existen formatos de almacenamiento en Big Data eficientes para almacenar este tipo de información.
]

![Big data file formats](images/big-data-file-formats.png)
---
## Texto XML
.concept[
    El procesamiento en Big Data de documentos XML grandes y complejos puede ser ineficiente. Se emplean procesos de lectura de datos (parsing) y conversión a otros formatos (como Avro) para almacenar su información en repositorios de Big Data.
]

![XML to Avro](images/xml-to-avro.png)
???
- Formatos de representación
- Tecnologías de consulta
- Tecnologías de almacenamiento
- Tecnologías de procesamiento
---
## Texto JSON
.concept[
    Al ser jerárquico, el formato de JSON presenta restricciones para almacenarse en Big Data especialmente con instancias de documentos grandes. Es por ello que se recomiendan procesos de lectura de datos (parsing) y conversión a otros formatos (como Avro) para almacenar su información en repositorios de Big Data.
]

![JSON to Avro](images/json-to-avro.png)

???
- Formatos de representación
- Tecnologías de consulta
- Tecnologías de almacenamiento
- Tecnologías de procesamiento



El crecimiento desmesurado en información hace impráctico en análisis por medio de personas o grupos de personas.

A la par, se han desarrollado tecnologías para procesar datos no estructurados de forma eficiente y escalable
NoSQL
Big Data

NoSQL
key/value
wide column
graph
document

MongoDB

Neo4J

 Cassandra
