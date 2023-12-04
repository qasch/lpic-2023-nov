#!/usr/bin/env bash

numbers="$(seq 20)"     # Kommandosubstitution
multiple=5
echo $numbers           # Variablensubstitution

for number in $numbers
do
        #echo $(( $number + 10 ))

        # Modulo % gibt den Rest einer ganzzahligen Division zurück
        if [ $(( $number % $multiple )) -eq 0 ]; then
                #echo $number ist eine gerade Zahl
                echo $number ist ein Vielfaches von $multiple
        else
                #echo $number ist eine ungerade Zahl
                echo ${number} ist kein Vielfaches von $multiple
        fi
done
