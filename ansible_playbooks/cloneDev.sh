#! /usr/bin/env bash

#setting variables
gitLink="git@github.com:ttu-bburchfield/swollenhippofinal.git"
localPath="$HOME/html"

eval ssh-agent -s
ssh-add .ssh/id_ed25519

#clone and renames the repo to html
git clone -b dev "$gitLink" "$localPath"

#checking to see if html folder exists and deletes it if it does
if [ -d "/var/www/html" ];
then
 sudo rm -r "/var/www/html"
fi

#moves the cloned repo to replace the html folder
sudo mv "$localPath" "/var/www/"
