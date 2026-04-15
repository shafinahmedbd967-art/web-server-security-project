#!/bin/bash

echo "=== Apache Live Log Monitor ==="
echo "Press CTRL + C to stop"
echo ""

LOG_FILE="/var/log/apache2/access.log"

# ensure apache running
sudo systemctl start apache2 >/dev/null 2>&1

# check log file
if [ ! -f "$LOG_FILE" ]; then
   echo "Log file not found!"
   exit 1
fi

tail -f $LOG_FILE
