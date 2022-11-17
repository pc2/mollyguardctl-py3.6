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
if [ "$(systemctl is-active mollyguard.service)" != "active" ]
then
	echo "1. Mollyguarding is not active. Exiting."
	exit 1
fi

echo "Starting tests. If your computer is still running after this script everything is fine."

echo "2. Testing 'shutdown'"
shutdown
echo "2. 'shutdown' doesn't work. Continuing. Any output can be ignored"

echo "3. Testing 'shutdown now'"
shutdown now
echo "3. 'shutdown now' doesn't work. Continuing."

echo "4. Testing 'poweroff'"
poweroff
echo "4. 'poweroff' doesn't work. Continuing."

echo "5. Testing 'init 0'"
init 0
echo "5. 'init 0' doesn't work. Continuing."

echo "6. Testing 'halt'"
halt
echo "6. 'halt' doesn't work. Continuing."

echo "7. Testing 'reboot'"
reboot
echo "7. 'reboot' doesn't work. Continuing."

echo "8. Testing 'init 6'"
init 6
echo "8. 'init 6' doesn't work. Continuing."

echo "Finished tests"
