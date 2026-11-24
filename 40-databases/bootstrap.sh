#!/bin/bash

dnf install ansible -y
cd /home/ec2/user
git clone https://github.com/Shariff40/roboshop-ansible-v3.git
cd roboshop-ansible-v3
git pull #whe you are running for 2nd time, if there is any change in repowe can pull the changes
ansible-playbook -e component=mongodb -e env=dev main.yaml