java -cp "*" -Xmx500m edu.stanford.nlp.pipeline.StanfordCoreNL
P -annotators tokenize,ssplit,pos -file ../data/input2-es-mx.txt -outputFormat conll