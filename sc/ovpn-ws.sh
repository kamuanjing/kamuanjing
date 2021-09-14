#!/bin/bash
# Ovpn For Edukasi & Imclass
# ==============================

# Getting Proxy Template
wget -q -O /usr/local/bin/ovpn-ws http://script.zxbxns.me/sc/ovpn-ws.py
chmod +x /usr/local/bin/ovpn-ws

# Installing Service
cat > /etc/systemd/system/ovpn-ws.service << END
[Unit]
Description=Python Ovpn Ws By Mail
Documentation=https://mailstores.me
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/ovpn-ws 2052
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable ovpn-ws
systemctl restart ovpn-ws

# Hapus Script
rm -f /root/ovpn-ws.sh
