#Ejecución de un pipeline de Stanford CoreNLP desde la línea de comando
# La salida se almacena en un archivo .out con una presentación legible 
java -Xmx5g edu.stanford.nlp.pipeline.StanfordCoreNLP -file ../data/input-es-mx.txt