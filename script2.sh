#!/bin/bash

# ceci est un commentaire

sudo apt update
sudo apt install apache2 php7.0 libapache2-mod-ph -y

echo "Nous allons créer un utilisateur. Quel nom souhaitez vous donner à cette utilisateur ?"
read name

sudo adduser $name
