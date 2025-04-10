#!/bin/bash

echo "📂 Setting up Day 3: Permissions Lab"

mkdir -p ~/lab/day3_permissions
cd ~/lab/day3_permissions

echo "Creating files..."
touch secret.txt shared.txt readme.md
mkdir confidential

echo "🔍 Default permissions:"
ls -l

echo "🔐 Adjusting permissions..."
chmod 600 secret.txt
chmod 644 shared.txt
chmod 700 confidential

echo "🙋 Changing ownership of readme.md to 'tester' user"
sudo adduser --disabled-password --gecos "" tester
sudo chown tester:tester readme.md

echo "👀 Confirming ownership and permissions:"
ls -l

echo "👑 Checking sudo access for current user:"
groups

echo "Attempting to read /etc/shadow using sudo:"
sudo cat /etc/shadow | head -5

echo "🛑 Done! Review /etc/sudoers (optional):"
echo "Run: sudo visudo"

