#!/bin/bash

# ceci est un commentaire

echo 'Bonjour Nous alloons créer notre machine virtuelle'

echo "Passons à l'IP. Veuillez choisir un nombre entre 1 et 99 "
read nombre
echo "Votre IP est le "192.168.33.$nombre" "

echo "Passons au dossier à synchroniser. Veuillez donner un nom à celui-ci"
read name


mkdir $name
touch Vagrantfile
echo "Vagrant.configure("2") do |config|" >> Vagrantfile
echo "config.vm.box = \"Ubuntu/xenial64\"" >> Vagrantfile
echo "config.vm.network \"private_network\", ip: \"192.168.33.$nombre\"" >> Vagrantfile
echo "config.vm.synced_folder \"./$name\", \"/var/www/html\"" >> Vagrantfile
echo "end" >> Vagrantfile

vagrant up
vagrant ssh
