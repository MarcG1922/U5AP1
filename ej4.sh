#!/bin/bash
read -p "Ingrese un valor del día (1 a 30): " dia

if [ "$dia" -ge 1 ] && [ "$dia" -le 30 ]; then

  dia_semana=$(( (dia - 1) % 7))

  dias_semana=("Lunes" "Martes" "Miércoles" "Jueves" "Viernes" "Sábado" "Domingo")

  echo "El día $dia es un ${dias_semana[$dia_semana]}."
else
  echo "Por favor, ingrese un valor válido del día (1 a 30)."
fi
