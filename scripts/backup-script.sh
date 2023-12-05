#!/usr/bin/env bash

# Skript beenden, falls ein Kommando Fehler verursacht
set -e

#set -x

# Verzeichnis von dem ein Backup erstellt werden soll vorgeben, z.B.:
dir_to_backup="/home/tux"
# TODO Wirklich im HOME Verzeichnis? Was ist mit vorhanden backup archiven? -> Übergangsweise in /tmp, später besseren Ort überlegen
backup_dir=/tmp/backup

# Timestamp wird in diesem Moment definiert, auch wenn wir ihn später erst nutzen, daher leichte Abweichung der tatsächlichen Zeit
timestamp=$(date "+%Y%m%d%H%M")

# TODO Prüfen, ob Skript mit root-Rechten aufgerufen wird

if [ $(id -u) -ne 0 ]; then
	echo "FEHLER: Das Skript muss mit root Rechten ausgeführt werden."
	exit 1
fi	



# backup dir erstellen, Option -p sorgt dafür, dass kein Fehler ausgegeben wird falls das Verzeichnis bereits existiert
mkdir -p $backup_dir

# Zusatz: Benutzer nach Verzeichnis fragen (mit read) -> Eingabe prüfen (existiert dieses Verzeichnis?)

# Archiv mit tar erstellen und komprimieren (gzip bzw. bzip2)
# Verwendung von gzip fürs testen, danach umstellen auf bzip2 (s.u.)
tar --create --gzip --file $backup_dir/archiv_${timestamp}.tar.gz $dir_to_backup
#tar --create --bzip2 --file $backup_dir/archiv_${timestamp}.tar.bz2 $dir_to_backup

# NOTE Eventuell nice verwenden, um andere Prozesse nicht zu benachteiligen

# Zusatz: freien Speicher prüfen


# Zusatz: Backup nur auf externem Medium ablegen (oder dorthin verschieben)
#         etwas umfangreicher (Medium mounten, prüfen, unmounten)
