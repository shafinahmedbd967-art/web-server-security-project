#!/bin/bash

echo "=== Firewall Setup (UFW) ==="

sudo apt install ufw -y

sudo ufw --force reset

echo "Allowing ports 22, 80, 443..."

sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

sudo ufw --force enable

echo "Firewall Status:"
sudo ufw status verbose

echo "DONE: Firewall Configured"
