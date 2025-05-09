#!/bin/bash

echo "===== Server Performance Statistics ====="
echo "Generated on: $(date)"
echo "-----------------------------------------"

# OS Version
echo -e "\n>> OS Version:"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2

# Uptime
echo -e "\n>> Uptime:"
uptime -p

# Load Average
echo -e "\n>> Load Average (1m, 5m, 15m):"
uptime | awk -F'load average: ' '{ print $2 }'

# Logged In Users
echo -e "\n>> Currently Logged In Users:"
who | awk '{print $1}' | sort | uniq -c

# CPU Usage
echo -e "\n>> Total CPU Usage:"
top -bn1 | grep "Cpu(s)" | \
awk '{print "Used: " 100 - $8 "%, Idle: " $8 "%"}'

# Memory Usage
echo -e "\n>> Memory Usage:"
free -h | awk '/^Mem:/ {
    used=$3; free=$4; total=$2;
    percent=($3/$2)*100;
    printf "Used: %s, Free: %s, Total: %s, Usage: %.2f%%\n", used, free, total, percent;
}'

# Disk Usage
echo -e "\n>> Disk Usage (/ mount):"
df -h / | awk 'NR==2 {
    printf "Used: %s, Available: %s, Total: %s, Usage: %s\n", $3, $4, $2, $5
}'

# Top 5 Processes by CPU Usage
echo -e "\n>> Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# Top 5 Processes by Memory Usage
echo -e "\n>> Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

# Failed Login Attempts
echo -e "\n>> Failed Login Attempts:"
if [ -f /var/log/auth.log ]; then
    grep "Failed password" /var/log/auth.log | wc -l
elif [ -f /var/log/secure ]; then
    grep "Failed password" /var/log/secure | wc -l
else
    echo "Log file not found."
fi

echo -e "\n===== End of Report ====="

