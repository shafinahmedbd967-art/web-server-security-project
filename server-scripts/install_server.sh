#!/bin/bash

echo "=== System Update & Apache Installation ==="

sudo apt update -y
sudo apt upgrade -y

echo "Installing Apache..."
sudo apt install apache2 -y

echo "Enabling Apache..."
sudo systemctl enable apache2
sudo systemctl start apache2

echo "Checking Apache Status..."
sudo systemctl status apache2 --no-pager

echo "DONE: Apache Installed & Running"
