# Tecnologías para datos no estructurados
.concept[
    Al trabajar en ambientes de Big Data, existen diversos formatos de datos. En algunos casos se soportan formatos como JSON o CSV para ciertos aspectos de la cadena de procesamiento de big data, sin embargo los formatos nativos de almacenamiento de big data ofrecen mayores beneficios.
]
- Formatos de big data: ORC, Avro, Parquet.
- Aspectos en común: Formato de almacenamiento nativo en HDFS, los archivos se pueden particionar en múltiples discos, cuentan con esquema.
![Big data file formats](images/big-data-file-formats.png)
---
## Formatos de texto plano en big data
|Formato big data|Descripción|
|---|---|
|Optimized Row Columnar (ORC)|Almacen de datos orientado a columnas, optimizado para tareas analíticas intensivas en lectura.|Avro|Marco de trabajo que incluye serialización de datos y llamadas a procedimientos remotos orientada a renglones. Utiliza JSON.|
|Parquet|Formato de archivos diseñado para almacenamiento orientado a columnas eficiente y ágil para archivos basados en renglones como CSV o TSV.|

- A continuación se describe cada formato.
---

## ORC
.concept[
    Almacen de datos orientado a columnas, optimizado para tareas analíticas intensivas en lectura.|Avro|Marco de trabajo que incluye serialización de datos y llamadas a procedimientos remotos orientada a renglones. Utiliza JSON.
]
- Orientado a columnas (almacena los datos en columnas), optimizado para procesos intensivos en lectura.
- Tasas elevadas de compresión (ZLIB).
- Soporte a tipos de datos de Hive (fecha, decimal, estructuras, listas, mapas y uniones).
- Los metadatos se almacenan con Protocol Buffers, permitiendo la adición o eliminación de campos.
- Compatible con HiveQL.
- Soporta serialización.

---

## Avro
.concept[
    Marco de trabajo que incluye serialización de datos y llamadas a procedimientos remotos orientada a renglones. Utiliza JSON.
]
- Orientado a renglones (almacena los datos en renglones): más eficiente para procesos intensos de escritura.
- Soporta serialización.
- Formato rápido binario.
- Soporta compresión de bloques y partición.
- Soporta modificaciones a su esquema (emplea JSON para describir los datos y un formato binario para almacenar los datos en sí).
- Almacena el esquema en el encabezado del archivo.
---
## Parquet
.concept[
Formato de archivos diseñado para almacenamiento orientado a columnas eficiente y ágil para archivos basados en renglones como CSV o TSV.
]
- Orientado a columnas (almacena los datos en columnas), optimizado para procesos intensivos en lectura.
- Tasas elevadas de compresión (hasta 75% con compresión Snappy).
- Recupera solo las columnas requeridas (reduce I/O de disco).
- Puede definirse, leerse y escribirse por medio del esquema y API de Avro.
???
https://oswinrh.medium.com/parquet-avro-or-orc-47b4802b4bcb
---
## Almacenamieto de texto plano en Big Data
.concept[
    Es muy común almacenar archivos planos en Big Data (p.e. archivos de tipo log). Se requiere diseñar una estructura de directorios adecuada.
]

- Almacenar archivos crudos, procesos de conversión de datos.
- Selección de formatos de compresión.
- Selección de modelos de particionamiento.

---
## Almacenamiento de texto XML en Big Data
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
## Almacenamiento de texto JSON en Big Data
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
