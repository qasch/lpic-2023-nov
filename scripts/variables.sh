#!/usr/bin/env bash

echo Hallo, ich bin ein Skript

echo Liste der Sondervariablen:

echo 'Exit Code des zuletzt ausgeführten Kommandos $?:' $?
echo
echo 'PID des Skritpts: $$:' $$
echo
echo 'Name des Skripts: $0:' $0
echo
echo 'Erstes Argument: $1:' $1
echo
echo 'Zweites Argument: $2:' $2
echo
echo 'Drittes Argument: $3:' $3
echo
echo 'Letztes Argument (nicht in sh): $_:' $_
echo
echo 'Anzahl der übergebenen Argumente: $#:' $#
echo
echo 'Alle dem Skript übergebenen Argumente: $*:' $*
echo
echo 'Alle dem Skript übergebenen Argumente: $@:' $@
echo
echo 'PID des letzen Hintergund Jobs: $!:' $!

# Führe echo PID... nur aus, wenn es auch einen Hintergund Prozess gibt:
#test "$!" == '' || echo 'PID des letzen Hintergund Jobs: $!:' $!
