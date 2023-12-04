#!/usr/bin/env bash

read -p 'Bitte gib deinen Benutzernamen ein ' username
echo
echo Dein Name ist: $username


# test -d /home/$username && echo "$username ist ein gültiger Benutzer" || echo "$username ist KEIN gültiger Bentuzer"

#if test -d /home/$username; then
#       echo $username ist ein gültiger Benutzer
#else
#       echo $username ist KEIN gültiger Benutzer
#fi

if [ -d /home/$username ]; then
       echo $username ist ein gültiger Benutzer
else
       echo $username ist KEIN gültiger Benutzer
fi
