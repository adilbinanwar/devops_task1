# !/bit/bash
#####################
# author:adil
# date: 08-05-2026
# verssion: v1
#####################
# This script monitors cpu usage, memory usade, disk usage of ec2 instance
#####################
# THis code displays all running services
echo "Services are: "
systemctl list-units --type=service --state=running
# this code shows cpu usage
echo "CPU usage: "
top -bn1 | grep "Cpu(s)"
# this code shows memory usage
echo "Memory usage: "
free -h
# this code shows disk usage
echo "Disk usage: "
df -h
