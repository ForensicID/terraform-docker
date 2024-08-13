#!/bin/bash

sleep 230s

# Variabel
HOST="hosts.ini"

# File known_hosts
KNOWN_HOSTS_FILE="/root/.ssh/known_hosts"

# Ambil daftar host dari file inventori
HOSTS=$(grep ansible_host "$INVENTORY_FILE" | awk -F'=' '{print $2}' | awk '{print $1}')

# Tambahkan kunci SSH ke file known_hosts
for HOST in $HOSTS; do
    echo "Adding $HOST to known_hosts"
    ssh-keyscan -H "$HOST" >> "$KNOWN_HOSTS_FILE"
done

# Execute Ansible playbook to install and configure containerd package on all hosts
ansible-playbook -i hosts.ini package/docker.yml
echo "Installation requirements package."
sleep 1s

# Execute Ansible playbook to initialize the Kubernetes master node
ansible-playbook -i hosts.ini package/nodejs.yml
echo "Installation NodeJS on server1."
sleep 1s

# Execute Ansible playbook to configure worker nodes
ansible-playbook -i hosts.ini package/mysql.yml
echo "Installation NodeJS on server2."
sleep 1s

# Execute Ansible playbook to configure worker nodes
ansible-playbook -i hosts.ini package/mariadb.yml
echo "Installation NodeJS on server3."
sleep 1s