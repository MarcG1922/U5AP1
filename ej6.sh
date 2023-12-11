#!/bin/bash
archivo_bd="bdlibros.txt"

buscar_por_titulo() {
  read -p "Ingrese el título a buscar: " titulo_buscar
  grep -i "$titulo_buscar" "$archivo_bd"
}

buscar_por_año() {
  read -p "Ingrese el año a buscar: " año_buscar
  grep -w "$año_buscar" "$archivo_bd"
}

buscar_por_editorial() {
  read -p "Ingrese la editorial a buscar: " editorial_buscar
  grep -i "$editorial_buscar" "$archivo_bd"
}

buscar_por_genero() {
  echo "Géneros disponibles:"
  cat "$archivo_bd" | cut -d'|' -f4 | sort | uniq
  read -p "Ingrese el género a buscar: " genero_buscar
  grep -i "$genero_buscar" "$archivo_bd"
}

insertar_libro() {
  ./libros-anyadir.sh
}

while true; do
  echo "Menú:"
  echo "1) Buscar por título"
  echo "2) Buscar por año"
  echo "3) Buscar por editorial"
  echo "4) Buscar por género"
  echo "5) Insertar libro"
  echo "6) Salir"

  read -p "Seleccione una opción (1-6): " opcion

  case $opcion in
    1) buscar_por_titulo ;;
    2) buscar_por_año ;;
    3) buscar_por_editorial ;;
    4) buscar_por_genero ;;
    5) insertar_libro ;;
    6) echo "Saliendo. ¡Hasta luego!"; exit ;;
    *) echo "Opción no válida. Por favor, seleccione una opción del menú (1-6).";;
  esac
done
