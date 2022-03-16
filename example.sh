#!/usr/bin/env bash

MENSAJE='¡Hola 42! ¿Cuál es la respuesta?'
declare -a SECRETO=()
SECRETO[1]=$(date +%s | rev | cut -c1-2)
SECRETO[2]=$(date +%s | rev | cut -c1-2 | rev)

declare -a CUENTO=()
CUENTO[1]=0
CUENTO[2]=0

PLAYER=$((`date +%s` % 2 + 1))
while true
do
  echo $MENSAJE
  printf "Player - $PLAYER: "
  read RESPUESTA
  CUENTO[$PLAYER]="$((${CUENTO[$PLAYER]} + 1))"

  if [ "$RESPUESTA" = "${SECRETO[$PLAYER]}" ]
  then
	echo '¡Bienvenido a 42!'
	echo "Winner: $PLAYER"
	echo "Score:"
	echo "PLAYER 1:- ${CUENTO[1]}"
	echo "PLAYER 2:- ${CUENTO[2]}"
	exit 0
  else
    echo '¡No pasarás!'
	if [ "${SECRETO[$PLAYER]}" -gt "$RESPUESTA" ]
	then
	  echo "¡El número secreto es mayor!"
    else
	  echo "¡El número secreto es menor!"
    fi
  fi
  PLAYER=$(($PLAYER % 2 + 1))
done
