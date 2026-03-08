#!/bin/bash
dnf install ansible -y
ansible-pull -U https://github.com/jampalanaresh45-cell/ansible/tree/8052df4ffca351087861996cd668cc7347cc05ac/ansible-roboshop-roles/ansible-roboshop-roles-tf-main -e component=mongodb main.yaml