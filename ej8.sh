#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Uso: $0 <valor mayor que 0>"
  exit 1
fi

valor=$1

if ! [[ $valor =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: El valor debe ser un entero mayor que 0."
  echo "Uso: $0 <valor mayor que 0>"
  exit 1
fi

if [ $((valor % 2)) -eq 0 ]; then
  echo "El valor $valor es par."
else
  echo "El valor $valor es impar."
fi
