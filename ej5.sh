#!/bin/bash
archivo_bd="bdlibros.txt"

generos=("Ficción" "No Ficción" "Ciencia Ficción" "Misterio" "Aventura" "Romance" "Fantasía" "Otros")

read -p "Ingrese el título del libro: " titulo
read -p "Ingrese el año del libro: " año
read -p "Ingrese la editorial del libro: " editorial

echo "Géneros disponibles:"
for ((i=0; i<${#generos[@]}; i++)); do
  echo "$(($i + 1)). ${generos[$i]}"
done

read -p "Ingrese el número correspondiente al género del libro: " opcion_genero

if [[ $opcion_genero =~ ^[1-${#generos[@]}]$ ]]; then
  genero_elegido=${generos[$(($opcion_genero - 1))]}

  nueva_linea="$titulo|$ano|$editorial|$genero_elegido"

  echo "$nueva_linea" >> "$archivo_bd"

  echo "Libro añadido correctamente a la base de datos."
else
  echo "Opción de género no válida."
fi
