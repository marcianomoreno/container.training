# Procesos y técnicas de minería de texto

.concept[La analítica de texto extrae significado, patrones y estructura a partir de datos de texto no estructurado.
]
- Luhn, Hans Peter. "The Automatic Creation of Literature Abstracts"
- Minería de texto: Enfocado en la aplicación de machine learning y métodos estadísticos en un enfoque de tipo BOW (bag of words).

- Analítica de texto: Evolución más amplia que integra técnicas de minería de datos, machine learning, procesamiento de lenguaje natural, recuperación de información y gestión de conocimiento.
---
## Análisis de texto
- Text Analytics = Entendimiento de lenguaje natural + minería de texto
- Extensión de minería de datos, descubrimiento de conocimento en texto (KDT)
- La minería de datos clásica ser orienta al análisis de datos estructurados
- Campo interdisciplinario con intersecciones en: extracción de información, machine learning, estadística, linguística computacional
???
## Clasificación de técnicas de analítica de texto
- Recuperación de información (Information Retrieval, IR)
- Análisis exploratorio
- Extracción de conceptos
- Generación de síntesis informativa
- Categorización
- Análisis de sentimiento
- Gestión de contenido
- Gestión de ontologías

---
## Análisis exploratorio

- Muestreo de datos
- Limpieza de datos (dividir líneas en enunciados, espacios en blanco, )
- Generación de modelos ngram (1:3), tokenizer
- Visualizar los datos, histogramas de tokens
- Frecuencia relativa de términos, Relative Term Frecuency (RTF) de los tokens
- Técnicas avanzadas: morfología, lematización, normalization
---
## Clustering
.concept[
    Técnica empleada para agrupar documentos similares. Difiere de clasificación porque la agrupación no usa tópicos predefinidos. Aplica métodos de aprendizaje supervisado.
]
- Los documentos pueden aparecer en múltiples subtópicos.
- Contribuye a que un documento no sea omitido en un proceso de búsqueda (referencia por múltiples índices).
---
class: pic
![Document clustering process](images/document-clustering-process.png)
---
## Clasificación
.concept[
    La clasificación involucra identificar los temas principales de un documento al colocarlo en un conjunto predefinido de temas (p.e. taxonomías). La clasificación solo cuenta las palabras que aparecen y de su cuantificación identifica los temas principales que aparecen en el documento.
]
- Se basa en relaciones identificadas al buscar por términos amplios, términos cortos, sinónimos y términos relacionados.
- Las herramientas de clasificación cuentan con métodos para calificar los documentos de acuerdo a la cantidad de información de un tema en particular.
---
class: pic
![Text classification process](images/text-classification-process.png)
