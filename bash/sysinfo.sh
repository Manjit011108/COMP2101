#!/bin/bash

#This command is used to get sysinfo.sh

fqdn=$(hostname -f)

#This command to display OS info to get required data
#FNR == 7 is used for selecting the line 7and print $3, $4, $5
hostname=$(hostnamectl | awk 'FNR == 7 {print $3, $4, $5}')

#This command is used to get ip address
ip=$(hostname -I)

#df command with '/' for root directory and '-h' option for human readable format with awk command
#FNR == 2 is used for selecting the line 2 and print $4 prints the 4th item field
freespace=$(df / -h | awk 'FNR == 2 {print $4}')


cat <<EQF

Report
=========================================
FQDN: $fqdn
Operating system name and version : $hostname
IP Address: $ip
Root Filesystem Free Space: $freespace
=========================================

EQF
