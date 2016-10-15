#!/bin/bash

echo "####### Server Details######"
printf "\n\n"
printf "Current Directory\n"
curdir=$(pwd)
echo -e ">> Curent Directory is $curdir\n\n"

echo -e " Free space"
freespc=$(free -m)
echo -e ">> Free space is $freespc\n\n"

echo -e "Hostname details and IP"
host=$(hostname -i)
echo -e ">> $host\n\n"

echo -e "CPU details"
count=$(grep -c processor /proc/cpuinfo)
echo -e ">> $count\n\n"

echo -e "Logged in User"
user=$(w)
echo -e ">> $user\n\n"

echo -e "Disk Space"
echo -e ">> $(df -h)\n\n"
