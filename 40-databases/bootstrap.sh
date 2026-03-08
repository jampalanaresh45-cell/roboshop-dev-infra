#!/bin/bash
dnf install ansible -y
ansible-pull -U https://github.com/jampalanaresh45-cell/ansible.git -e component=mongodb main.yaml