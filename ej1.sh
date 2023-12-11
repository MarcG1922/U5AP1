#!/bin/sh
echo "Ingrese su nombre: "
read nombre
echo "Ingrese su primer apellido: "
read apellido1
echo "Ingrese su segundo apellido: "
read apellido2

sleep 5

nombre_completo="$nombre $apellido1 $apellido2"
echo "Tu nombre completo es: $nombre_completo"
