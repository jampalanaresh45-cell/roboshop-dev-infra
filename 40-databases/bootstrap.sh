#!/bin/bash
dnf install ansible -y
ansible-pull -U https://github.com/jampalanaresh45-cell/ansible.git \
-e component=mongodb \
-e env=dev \
ansible-roboshop-roles-tf-main/main.ymls/ansible-roboshop-roles-tf-main -e component=mongodb main.yaml