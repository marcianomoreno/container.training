// Ejecutar el pipeline desde código Java
package edu.stanford.nlp.examples;

import edu.stanford.nlp.io.*;
import edu.stanford.nlp.pipeline.*;

import java.util.*;


public class PipelineExample {

    public static String text = "Pedro Infante nació en México.";

    public static void main(String[] args) {
        // Configurar las propiedades del pipeline
        Properties props = new Properties();
        // Seleccionar los anotadores a ejecutar
        props.setProperty("annotators", "tokenize,ssplit,pos,lemma,ner,depparse");
        props.setProperty( "tokenize.language", "spanish");
        // Crear el pipeline
        StanfordCoreNLP pipeline = new StanfordCoreNLP(props);
        // Crear un objeto CoreDocument
        CoreDocument document = pipeline.processToCoreDocument(text);
    }

}