#!/bin/bash

echo "Day 2 Report - $(date)"
echo "------------------------"
echo "Number of .conf files in /etc:"
find /etc -name "*.conf" 2>/dev/null | wc -l

echo -e "\nUsers with /bin/bash shell:"
grep "/bin/bash" /etc/passwd

echo -e "\nServices containing ssh:"
grep -i "ssh" services.txt

chmod +x day2_report.sh
./day2_report.sh


