#!/bin/bash

#############################################
# Author  : Adil
# Purpose : System Monitoring Script
# Version : v1
#############################################

echo "=================================================="
echo "            SYSTEM MONITORING REPORT"
echo "=================================================="
echo "Generated On : $(date)"
echo ""

############################
# RUNNING SERVICES
############################
echo "================ RUNNING SERVICES ================"
systemctl list-units --type=service --state=running
echo ""

############################
# CPU USAGE
############################
echo "=================== CPU USAGE ===================="
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

printf "CPU Usage : %.2f%%\n" "$cpu_usage"
echo ""

############################
# MEMORY USAGE
############################
echo "================= MEMORY USAGE ==================="
free -h
echo ""

############################
# DISK USAGE
############################
echo "================== DISK USAGE ===================="
df -h
echo ""

echo "=================================================="
echo "         END OF SYSTEM MONITORING REPORT"
echo "=================================================="
