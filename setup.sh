#/bin/bash
# Install and activate mollyguard

echo "Starting installation"
python3 setup.py install --install-scripts /usr/local/sbin
cp ./mollyguard.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable --now mollyguard.service
echo "All done."
