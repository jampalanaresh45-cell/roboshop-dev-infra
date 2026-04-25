#!/bin/bash
component=$1
dnf install ansible -y
# ansible-pull -U https://github.com/jampalanaresh45-cell/ansible-roboshop-roles-tf.git -e component=$component main.yaml

REPO_URL=https://github.com/jampalanaresh45-cell/ansible-roboshop-roles-tf.git
REPO_DIR=/opt/roboshop/ansible 
ANSIBLE_DIR=ansible-roboshop-roles-tf


mkdir -p REPO_DIR
mkdir -p /var/log/roboshop
touch ansible.log

cd $REPO_DIR

## Check if the ansible repository is already cloned###

if [ -d $ANSIBLE_DIR ]; then
    echo "Repository already exists. Pulling the latest changes..."
    cd $ANSIBLE_DIR
    git pull
else
    echo "Cloning the repository..."
    git clone $REPO_URL
    cd $ANSIBLE_DIR
fi

ansible-playbook -e component=$component main.yaml
