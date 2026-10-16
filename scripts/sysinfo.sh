#!/bin/bash

System Information Report

DS1202 Assignment

echo "=================================="
echo "       SYSTEM INFORMATION"
echo "=================================="

echo
echo "Hostname:"
hostname

echo
echo "Operating System and Kernel:"
if [ -f /etc/os-release ]; then
. /etc/os-release
echo "$PRETTY_NAME"
fi
uname -r

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h

echo
echo "CPU Load:"
uptime

echo
echo "Report generated at:"
date

echo "=================================="
