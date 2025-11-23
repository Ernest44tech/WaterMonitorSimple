#!/bin/bash

NUEVO_NIVEL=$1

echo "{
  \"id\": \"1\",
  \"level\": \"$NUEVO_NIVEL\"
}" > level.json

echo "Nivel actualizado localmente a: $NUEVO_NIVEL"


