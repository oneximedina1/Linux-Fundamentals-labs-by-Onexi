#!/bin/bash
# disk_report.sh - Disk usage and SMART health reporting script
# Created for onexi-prod01 server

# Check root filesystem usage
ROOT_USAGE=$(df -h | grep -w "/" | awk '{print $5}' | tr -d '%')
ROOT_STATUS="OK"

if [ "$ROOT_USAGE" -gt 70 ]; then
    ROOT_STATUS="WARNING"
fi

# Function to check disk health
check_disk_health() {
    local disk=$1
    local health=$(sudo smartctl -H /dev/$disk 2>/dev/null | grep -i "overall-health" | awk '{print $NF}')
    
    # If we didn't get a SMART result or it failed
    if [ -z "$health" ] || [ "$health" != "PASSED" ]; then
        echo "NEEDS REPLACEMENT"
    else
        echo "HEALTHY"
    fi
}

# Check each disk
SDA_HEALTH=$(check_disk_health sda)
SDB_HEALTH=$(check_disk_health sdb)
SDC_HEALTH=$(check_disk_health sdc)

# Output report
echo "/: ${ROOT_USAGE}% usage - ${ROOT_STATUS}"
echo "Disk sda: ${SDA_HEALTH}"
echo "Disk sdb: ${SDB_HEALTH}"
echo "Disk sdc: ${SDC_HEALTH}"
