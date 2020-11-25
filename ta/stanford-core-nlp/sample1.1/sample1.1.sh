# Es posible personalizar el pipeline indicando las propiedades en un archivo .properties
# Ejemolo de invocación del pipeline empleando las propiedades indicadas en ejemplo.props
java -Xmx5g edu.stanford.nlp.pipeline.StanfordCoreNLP -props ejemplo.props -file ../data/input3-es-mx.txt