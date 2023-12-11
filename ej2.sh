#!/bin/bash
while true; do
  read -p "Ingrese un valor mayor que 0: " valor

  if [[ $valor =~ ^[1-9][0-9]*$ ]]; then
    break
  else
    echo "Por favor, ingrese un valor válido mayor que 0."
  fi
done

if [ $((valor % 2)) -eq 0 ]; then
  echo "El valor $valor es par."
else
  echo "El valor $valor es impar."
fi
