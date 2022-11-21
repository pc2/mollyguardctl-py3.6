#/bin/bash
# Install and activate mollyguard

if ! command -v python3 &>/dev/null
then
	echo "ERROR: Please install python3 by any means neccessary."
	exit 1
fi

echo "Starting installation"
cd $(dirname $0)
python3 ./setup.py install --install-scripts /usr/local/sbin
cp ./mollyguard.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable --now mollyguard.service
echo "All done. If you are brave you can now run the tests:"
echo "bash test.sh"
