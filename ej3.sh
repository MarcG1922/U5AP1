#!/bin/bash
if [ "$#" -eq 1 ] && [[ $1 =~ ^[1-9][0-9]*$ ]]; then
  for ((i=0; i<=$1; i++)); do
    echo $i
  done
else
  echo "Uso: $0 <valor mayor que 0>"
fi
