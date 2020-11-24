# Las propiedades pueden ser especificadas en la línea de comando
# TODO: pos.model edu/stanford/nlp/models/pos-tagger/english-bidirectional-distsim.tagger
java -Xmx5g edu.stanford.nlp.pipeline.StanfordCoreNLP -annotators tokenize,ssplit,pos -outputFormat json -file ../data/input-es-mx.txt
