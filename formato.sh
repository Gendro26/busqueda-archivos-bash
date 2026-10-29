#!/bin/bash

# Contar las apariciones de una frase en un archivo
procesar_archivo() {
    local archivo="$1"
    local palabra="$2"
    local frecuencia

    frecuencia=$(grep -F -o -I -- "$palabra" "$archivo" | wc -l)
    frecuencia=$(echo "$frecuencia" | tr -d '[:space:]')

    if [ "$frecuencia" -gt 0 ]; then
        printf "Archivo: %s | Ocurrencias: %s\n" "$archivo" "$frecuencia"
    fi
}