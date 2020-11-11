#!/bin/bash
echo "[TASK 1] Install essential tools"
yum install -y epel-release && yum install -y ansible vim bash-completion

echo "[TASK 2] place the new config file"
rm -rf /etc/ansible/ansible.cfg 
mv /vagrant/ansible/ansible.cfg /etc/ansible/

echo "[TASK 2] Run KinD role"
ansible-playbook /vagrant/roles/KinD.yml 