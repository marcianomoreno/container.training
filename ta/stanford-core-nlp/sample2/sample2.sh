# Comando para ejecución mínima desde la línea de comando
# -cp "*" carga todlos los archivos jar en el directorio actual
# Se recomienda usar procesamiento en batch de contenidos grandes
# El parámetro -Xmx2g especifica la cantidad de RAM que Java hará disponile a CoreNLP. En una máquina de 64 bits CoreNLP típicamente requiere de 2GB para correr (hasta 6 GB dependiendo de los anotadores y el tamaño del documento)
# Ejecutar desde /CoreNLP
java -cp "*" edu.stanford.nlp.pipeline.StanfordCoreNLP -file /stanford-core-nlp/data/input-es-mx.txt