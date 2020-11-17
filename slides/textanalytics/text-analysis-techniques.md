# Técnicas de análisis de texto

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
---
## Proceso de análisis de texto
- Recolección de documentos
- Preprocesamiento
- Análisis de texto (proceso iterativo)
- 
???
PDF: Dialnet-TextAnalyticsTheConvergenceOfBigDataAndArtificialI-5573981
---
## Técnicas de análisis de datos
- Segmentación de enunciados (sentence segmentation)
- Generación de tokens (tokenization)
- Etiquetado de partes del lenguaje (POS tagging)
- Recuperación de información (Information Retrieval)
- Reconocimiento de entidades nombradas (Named Entity Recognition)
- Representación de Web con anotaciones semánticas (Semantic Web Annotated Representation)
??? 
PDF: Dialnet-TextAnalyticsTheConvergenceOfBigDataAndArtificialI-5573981
---
## Análisis de texto y otras disciplinas
(dato no esctructurado) -> TA -> (dato estructurado)
(dato estructurado) -> {KBs, ontología, machine learning}
- 
---

## Recuperación de información (IR)
.concept[
    Encontrar material (documentos, típicamente) de naturaleza no estructurada (texto, generalmente) que satisfaga una necesidad de información con respecto a colecciones grandes (generalmente almacenadas en documentos).
]

- Precursores: bibliotecarios, asistentes legales.

- Actualmente: cientos de millones de usuarios cuando realizan búsquedas en motores de búsqueda o en su correo.

- IR también abarca el soporte a usuarios para examinar y filtrar colecciones de documentos o procesar documentos recuperados.

---

## Escala de sistemas de IR

- Web: billones de documentos almacenados en billones de computadoras

- Empresarial: documentos internos de la organización, patentes, artículos de investigación

- Información personal: documentos almacenados en un dispositivo de uso personal (p.e. computadora)
---
## Relevancia

- La práctica de Information Retrieval (IR), la recuperación de información, se está volviendo la forma predominante de acceso a la información.
---

## Análisis exploratorio

- Muestreo de datos
- Limpieza de datos (dividir líneas en enunciados, espacios en blanco, )
- Generación de modelos ngram (1:3), tokenizer
- Visualizar los datos, histogramas de tokens
- Frecuencia relativa de términos, Relative Term Frecuency (RTF) de los tokens
- Técnicas avanzadas: morfología, lematización, normalization

