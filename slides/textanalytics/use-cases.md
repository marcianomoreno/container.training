# Campos de aplicación de análisis de datos no estructurados
.concept[
    El análisis de datos no estructurados tiene diversas áreas de aplicación que pueden ser del interés para los involucrados en una solución.
]
---
class: pic
![Text analytics practice areas overview](images/text-analytics-practice-areas-overview.png)

---
## Campos de aplicación de análisis de texto

|Campo|Descripción|
|---|---|
|Búsqueda y recuperación de información|Indexar, buscar y recuperar documentos de bases de datos grandes con consultas de claves|
|Agrupación de documentos|Aplica algoritmos de minería de datos para agrupar documentos similares (en clusters)|
|Clasificación de documentos|Asigna un conjunto definido de etiquetas a documentos no etiquetados|
|Minería web|Analiza los documentos Web y sus enlaces. Apalanca tecnologías de clasificación de documentos y comprensión de lenguaje natural|
|Extracción de información|Construye datos estructurados a partir de texto no estructurado|
|Procesamiento de lenguaje natural|Provee de variables de entrada para procesos de minería de texto tales como etiquetas de parte de lenguaje y fronteras de frases|
|Extracción de conceptos|Sistemas automatizados que "comprenden" el significado del texto|

---
class: pic
![Text analytics practice decision fllow](images/text-analytics-practice-decision-flow.png)

---
## Recuperación de información
.concept[

]
- Producto deseado: Documentos que correspondan con palabras clave.
- Temas de minería de texto: búsqueda de palabras clave, índice invertido, respuesta a preguntas.

---
## Agrupación de documentos (Clustering)
.concept[

]

- Producto deseado: Documentos similares.
- Algoritmos de minería de datos: K-means, Singular Value Decomposition (SVD).
- Temas de minería de datos: clustering de documentos, similitud de documentos.
---
## Clasificación
.concept[

]

- Producto deseado: Documentos únicos.
- Algoritmos de minería de datos: Naïve Bayes, Singular Value Decomposition (SVD), Regresión Logística, Árboles de Decisión, Redes Neuronales, Máquinas de Soporte Vectorial, MARSplines
- Temas de minería de datos: selección de características, análisis de sentimiento, reducción de dimensiones, eDiscovery.
---
## Minería Web
.concept[

]

- Producto deseado: Comprensión de contenido Web.
- Temas de minería de datos: análisis de sentimiento, "navegación" (crawling) Web, análisis de enlaces.
---
## Extracción de información
.concept[

]

- Producto deseado: Una base de datos estructurada.
- Temas de minería de datos: extracción de entidades, extracción de enlaces.
---
## Extracción de conceptos
.concept[

]

- Producto deseado: Lista de sinónimos.
- Temas de modelado de datos: modelado de tópicos, identificación de sinónimos.
---
## Procesamiento de lenguaje natural
.concept[

]

- Producto deseado: Enunciados con componentes identificados (subrayados).
- Temas de modelado de datos: etiquetado de partes del discurso (part of speech tagging, POS), tokenización, respuesta a preguntas
---
## Casos de uso de analísis de datos no estructurados

- Identificación de tendencias en documentos
- Clasificación de documentos
- Análisis de sentimiento
- Análisis de asociaciones e identificación de causas raíz
- Mejora de modelos predictivos con datos de texto
- Detección de opiniones
---
class: pic
![Text analytics intersections](images/text-analytics-intersections.png)
???
https://www.elderresearch.com/hubfs/Whitepaper_The_Seven_Practice_Areas_of_Text_Analytics_Chapter_2_Excerpt.pdf


---
## Síntesis de documentos (noticias, artículos)
.concept[
    Proceso de condensar un documento o colección en una sinopsis comprensible por medio de recolección de frases clave y comprensión del significado de un texto.
]
- Entrenamiento en datasets limpios tokenizados.
- Aplicable a reportes financieros y agregadores de noticias.
???
https://lionbridge.ai/services/text-summarization/
---
## Mercadeo y gestión de medios sociales
.concept[
    Herramientas de productividad, inmediatez y mecanismos de respuesta para gestionar e interactuar con el comportamiento que ocurre en el Web social.
]
- Relevante para organizaciones con múltiples marcas, canales sociales o portavoces institucionales.
- Funciones básicas:
    - Análisis de medios sociales.
    - Creación de contenido y campañas.
    - Vinculación con el público y capacidades de respuesta.
???
20150505_WP_EN_Sprinklr-IDC_Marketscape_V01.pdf
---
## Análisis legal: Extracción de información de documentos legales
.concept[
   Recopilación de datos de múltiples fuentes para proveer de información que contribuya a crear estrategias efectivas legales para juicios relacionados con pantentes, marcas y derechos de autor.
]
- Digitalización de documentos, aplicación de procesos OCR.
- Extracción de información de texto con contenido legal (p.e. caso, juzgado, partes, tipo de juicio, argumentos).
- Integración de información relacionada (patentes, marcas).
- Identificación de entidades (NER).
- Clasificación de documentos.
???
20150505_WP_EN_Sprinklr-IDC_Marketscape_V01.pdf
 La información de ligitios cuenta con abundantes referencias a jueces, abogados, partes (empresas, organizaciones públicas) recoletada de millones de documentos.