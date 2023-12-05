#!/bin/bash

#Path to Ansible.exe
ANSIBLE_PATH=/bin/ansible

#Path to Dev Ansible Playbook
PLAYBOOK_PATH=~/ansible_playbooks/installdev.yml

#Run the Playbook
$ANSIBLE_PATH-playbook $PLAYBOOK_PATH

#Path to prod Ansible Playbook
PLAYBOOK_PATH=~/ansible_playbooks/installprod.yml

#Run the Playbook
$ANSIBLE_PATH-playbook $PLAYBOOK_PATH
