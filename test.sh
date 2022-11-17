#!/bin/bash


echo "Testing mollyguardctl on $HOSTNAME"
uname -a

if [ "$(whoami)" != "root" ]
then
	echo "Early-Exit: Testing should only be done as root."
	exit 1
fi

echo "1. Check if service is active: "
systemctl is-active mollyguard.service
if [ "$(systemctl is-active mollyguard.service)" != "atcive" ]
then
	echo "1. Mollyguarding is not active. Exiting."
	exit 1
fi

echo "Starting tests. If your computer is still running after this script everything is fine."

echo "2. Testing 'shutdown'"
shutdown
echo "2. 'shutdown' doesn't work. Continuing."

echo "3. Testing 'poweroff'"
poweroff
echo "3. 'poweroff' doesn't work. Continuing."

echo "3. Testing 'init 0'"
init 0
echo "3. 'init 0' doesn't work. Continuing."

echo "4. Testing 'halt'"
halt
echo "4. 'halt' doesn't work. Continuing."

echo "5. Testing 'reboot'"
reboot
echo "5. 'reboot' doesn't work. Continuing."

echo "6. Testing 'init 6'"
init 6
echo "6. 'init 6' doesn't work. Continuing."

echo "Finished tests"
