#!/bin/bash
cd /home/rodrigue/Ecole/shell-exe/Job_08
nbrConnexion=$(last | grep -c rodrigue) 

dateSystem=$(date +%d-%B-%Y-%H:%M)
nomDuFichier="number_connexion-$dateSystem.txt"

echo $nbrConnexion > $nomDuFichier && tar --force-local -cf $nomDuFichier.tar $nomDuFichier && rm $nomDuFichier && mv $nomDuFichier.tar ./Backup

# Pour le réglage de cron : 0 */1 * * * /home/rodrigue/Ecole/shell-exe/Job_ 08/get_logs.sh
