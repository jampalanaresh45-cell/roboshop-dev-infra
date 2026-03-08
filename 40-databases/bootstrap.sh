#!/bin/bash
dnf install ansible -y
ansible-pull -U https://github.com/jampalanaresh45-cell/ansible-roboshop-roles-tf.git -e component=$component main.yaml