#!/bin/bash
#This script will email me the ip address, server name, version of basg, and date and time.
emailaddress=olleyca@mail.uc.edu
today=$(date '+%d/%m/%Y %H:%M:%S')
ip=$(ip a | grep 'dynamic ens192' | awk '{print $2}')
content="Hostname: $HOSTNAME	\n  IP Address: $ip	\n  Version of Bash: $BASH_VERSION	\n Today's Date: $today"	 
mail -s "IT3038C Linux Facts" $emailaddress <<< $(echo -e $content)
