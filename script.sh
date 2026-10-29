#!/bin/bash

# Cargar los módulos del programa
source "$(dirname "$0")/formato.sh"
source "$(dirname "$0")/motor.sh"

# Módulo 1: Validación de entrada
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

# Ejecutar el programa
validar_entrada "$@" || exit 1

palabra="$1"
directorio="$2"

buscar_archivos "$palabra" "$directorio"