#!/bin/bash

case "$2" in
	"x" )
	resultat=$(($1 * $3));;
	"+" )
	resultat=$(($1 + $3));;
	"-" )
	resultat=$(($1 - $3));;
	"/" )
	resultat=$(($1 / $3));;

esac
echo "$resultat"
