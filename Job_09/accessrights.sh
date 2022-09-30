#!/bin/bash
while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4
do
  	echo "Prenom:$rec_column1"
  	echo "Nom: $rec_column2"
  	echo "Mdp: $rec_column3"
  	echo "Role: $rec_column4"
	sudo adduser ${rec_column1,,} --gecos "$rec_column1 $rec_column2 ,,," --disabled-password
	echo "${rec_column1,,}:$rec_column3" | sudo chpasswd

#Groupe Admin 	
	if [ "$rec_column4" = "Admin" ]; then
	sudo adduser ${rec_column1,,} sudo
fi
done < <(cut -d "," -f2,3,4,5 Shell_Userlist.csv | tail -n +2 )
