#! /usr/bin/env bash

if [ "$#" -eq 0 ];
then
 cd ansible_playbooks
 ansible-playbook installprod.yml
 ansible-playbook installdev.yml
else
 branch="$1"
 cd ansible_playbooks

 while [ "$branch" != "1" ] && [ "$branch" != "2" ];
 do
  echo "Please enter a number, 1. web server or 2. web dev server"
  read branch
 done

 if [ "$branch" == "1" ];
 then
  ansible-playbook installprod.yml
 elif [ "$branch" == "2" ];
 then
  ansible-playbook installdev.yml
 fi
fi
