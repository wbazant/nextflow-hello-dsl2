#!/usr/bin/env nextflow
nextflow.enable.dsl=2

process sayHello {
  echo true
  input: 
    val x
  script:
    """
    echo '$x world!'
    """
}

workflow {

  cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'
  sayHello(cheers)
}
