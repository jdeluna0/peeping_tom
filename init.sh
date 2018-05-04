#!/bin/bash

if ps aux | grep [p]ython3 > /dev/null;then
	echo "RESTARTING APP..."
	process=$(ps aux | grep [p]ython3 | awk '{print $2}') 
	kill $process;sleep 1;/bin/python3 /var/www/html/ip_app/ip_app.py > /var/www/html/ip_app/ip_assass_logs/ip_assass.log 2>&1 &
else
	echo "App is not running...starting."
	/bin/python3 /var/www/html/ip_app/ip_app.py > /var/www/html/ip_app/ip_assass_logs/ip_assass.log 2>&1 &
fi
