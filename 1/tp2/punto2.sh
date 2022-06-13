#!/bin/bash

clear

cp /etc/fstab fstab

UUID=$(awk '/ext4/' fstab | awk '{print $1}' | cut -d"=" -f2)

echo "Mi UUID es: $UUID"
