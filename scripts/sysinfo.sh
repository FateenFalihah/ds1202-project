#!/bin/bash

System Information Report with Logging

DS1202 Assignment

PROJECT_DIR="$HOME/ds1202-project"
LOG_DIR="$PROJECT_DIR/logs"
LOG_FILE="$LOG_DIR/sysinfo.log"

mkdir -p "$LOG_DIR"

{
echo "=================================="
echo "       SYSTEM INFORMATION"
echo "=================================="

echo
echo "Hostname:"
hostname

echo
echo "Operating System:"
if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "$PRETTY_NAME"
fi

echo
echo "Kernel Version:"
uname -r

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h

echo
echo "CPU Load and Uptime:"
uptime

echo
echo "Report generated at:"
date

echo "=================================="

} | tee -a "$LOG_FILE"

echo
echo "Report saved to: $LOG_FILE"
