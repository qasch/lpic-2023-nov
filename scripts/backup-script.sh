#!/usr/bin/env bash


# Verzeichnis von dem ein Backup erstellt werden soll vorgeben, z.B.:
dir="/home/tux"

# Zusatz: Benutzer nach Verzeichnis fragen (mit read) -> Eingabe prüfen (existiert dieses Verzeichnis?)

# tar benutzen, um ein Archiv des Verzeichnisses zu erstellen
# dann komprimieren (gzip, bzip2, xz)

# Name des Archivs: backup_<verzeichnis>_<timestamp YYYYMMDDhhmm.tar.gz>
# Timestamp vom Skript erstellen lassen
# (Zusatz: Benutzer nach Namen fragen)

# Speicherort für Archiv
# Zusatz: freien Speicher prüfen

# Prüfen, ob Skript mit root-Rechten aufgerufen wird

# Zusatz: Backup nur auf externem Medium ablegen (oder dorthin verschieben)
#         etwas umfangreicher (Medium mounten, prüfen, unmounten)
 
# Generelles:
# - nutzt Variablen
# - überlegt euch *sprechende* Namen für Variablen
# - bei Benutzereingaben: prüfen!
# - Kommentiert euer Skript
#
#
