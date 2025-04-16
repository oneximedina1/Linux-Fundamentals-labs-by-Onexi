#!/bin/bash
read -p "Enter your username: " input

if [ "$input" == "$USER" ]; then
  echo "✅ Access granted, $USER"
else
  echo "❌ Access denied"
fi
