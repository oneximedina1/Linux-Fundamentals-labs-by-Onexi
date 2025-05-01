#!/bin/bash

# Set the output directory and file
OUTPUT_DIR=~/lab/day14_logging
OUTPUT_FILE=$OUTPUT_DIR/log_report.txt

# Create the output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Function to display and log
display_and_log() {
    echo "===== $1 =====" | tee -a $OUTPUT_FILE
    $2 | tee -a $OUTPUT_FILE
    echo "" | tee -a $OUTPUT_FILE
}

# Initialize the log file with a timestamp
echo "Log Report generated on $(date)" > $OUTPUT_FILE
echo "============================" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Display kernel logs
display_and_log "KERNEL LOG (dmesg)" "dmesg | tail -20"

# Display system logs
display_and_log "SYSTEM LOG (/var/log/syslog)" "tail -20 /var/log/syslog"

# Display auth logs
display_and_log "AUTH LOG (/var/log/auth.log)" "tail -20 /var/log/auth.log"

# Check if an argument was provided
if [ $# -gt 0 ]; then
    if [ -f "$1" ]; then
        display_and_log "CUSTOM LOG ($1)" "tail -20 $1"
    else
        echo "File $1 does not exist!" | tee -a $OUTPUT_FILE
    fi
fi

echo "Log report saved to $OUTPUT_FILE"
