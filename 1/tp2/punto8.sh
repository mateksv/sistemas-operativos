#!/bin/bash

SNOM=$(cat /etc/passwd | grep "admi" | cut -d":" -f1)
SUID=$(cat /etc/passwd | grep "admi" | cut -d":" -f3)
SGID=$(cat /etc/passwd | grep "admi" | cut -d":" -f4)
SSHELL=$(cat /etc/passwd | grep "admi" | cut -d":" -f7)

echo "NOMBRE: $SNOM"
echo "UID: $SUID"
echo "GID: $SGID"
echo "SHELL: $SSHELL"
