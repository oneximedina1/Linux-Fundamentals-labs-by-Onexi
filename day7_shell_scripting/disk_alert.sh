#!/bin/bash
usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$usage" -gt 80 ]; then
  echo "🚨 Disk usage is above 80%! It's at ${usage}%"
else
  echo "✅ Disk usage is fine: ${usage}%"
fi
