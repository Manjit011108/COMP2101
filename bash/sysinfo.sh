#!/bin/bash

#This command is used to get sysinfo.sh
echo "FQDN:"
hostname -f

#This command is used to get host information
echo "Host Information!"
hostnamectl

This command is used to get ip address
echo "IP Address!"
hostname -I

#this command is used to get root filesystem status
echo "Root Filesystem Status!"
df / -h
