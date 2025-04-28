#!/bin/bash

# Disk Space Monitor Script
THRESHOLD=80  # Set your warning threshold (in %)

# Check disk usage on root filesystem "/"
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Output current usage
echo "Current Disk Usage: ${USAGE}%"

# Compare against threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "⚠️ Warning: Disk usage is above ${THRESHOLD}%! (Current: ${USAGE}%)"
fi
