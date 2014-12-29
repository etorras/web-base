#!/bin/bash

sudo apt-get install -y software-properties-common python-software-properties
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

ansible-playbook  /vagrant/setup.yml
