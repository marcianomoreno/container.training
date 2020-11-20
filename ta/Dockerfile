FROM ubuntu
ENV TZ=America/Mexico_City
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y && \
    apt-get install -y apt-utils \
        default-jre \
        default-jdk \
        ant \
        unzip \
        wget  \
        git
RUN wget http://nlp.stanford.edu/software/stanford-corenlp-latest.zip; \
    mkdir /CoreNLP; \
    unzip stanford-corenlp-latest.zip -d /CoreNLP; \
    cd /CoreNLP/stanford-corenlp-*; \
    mv * /CoreNLP; \
    cd /CoreNLP; \
    export CLASSPATH=""; for file in `find . -name "*.jar"`; do export CLASSPATH="$CLASSPATH:`realpath $file`"; done
ENV PORT 9000
EXPOSE 9000
WORKDIR /CoreNLP
CMD java -cp '*' -mx4g edu.stanford.nlp.pipeline.StanfordCoreNLPServer
