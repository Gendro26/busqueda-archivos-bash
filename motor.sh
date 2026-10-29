#!/bin/bash

# Buscar recursivamente archivos que contengan la frase
buscar_archivos() {
    local palabra="$1"
    local directorio="$2"
    local archivo
    local encontrados=0

    while IFS= read -r -d '' archivo; do
        if grep -F -q -I -- "$palabra" "$archivo"; then
            encontrados=$((encontrados + 1))
                    procesar_archivo "$archivo" "$palabra"
fi
    done < <(find "$directorio" -type f -print0)

    if [ "$encontrados" -eq 0 ]; then
        echo "No se encontraron coincidencias."
    fi
}