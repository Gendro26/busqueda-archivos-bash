#!/bin/bash

# Validar que se reciban exactamente dos argumentos
validar_entrada() {
    if [ "$#" -ne 2 ]; then
        echo "Uso: $0 \"palabra o frase\" \"directorio\""
        return 1
    fi

    if [ -z "$1" ]; then
        echo "Error: la palabra o frase no puede estar vacía."
        return 1
    fi

    if [ ! -d "$2" ]; then
        echo "Error: la ruta no existe o no es un directorio válido."
        return 1
    fi

    return 0
}