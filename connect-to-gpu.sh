#!/usr/bin/expect

set username "iot12"
set password "sEdRfTgY"

# Connexion SSH au premier serveur
spawn ssh $username@bilbo.iut-bm.univ-fcomte.fr
expect "$username@bilbo.iut-bm.univ-fcomte.fr's password:"
send "$password\r"
expect "$ "
send "exit\r"

# Connexion SSH au deuxième serveur (cluster1)
spawn ssh $username@cluster1.iut-bm.univ-fcomte.fr
expect "$username@cluster1.iut-bm.univ-fcomte.fr's password"
send "$password\r"
expect "$ "
send "cd samples-etu-vide/0_Simple/\r"
send "clear\r"
interact

