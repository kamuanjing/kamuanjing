#!/bin/bash
# Proxy For Edukasi & Imclass
# ==============================

# Getting Proxy Template
wget -q -O /usr/local/bin/ssl-ws http://script.zxbxns.my.id/sc/ssl-ws.py
chmod +x /usr/local/bin/ssl-ws

# Installing Service
cat > /etc/systemd/system/ssl-ws.service << END
[Unit]
Description=Python Edu Proxy By Mail Service
Documentation=https://t.me/zxbxns
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/ssl-ws 111
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable ssl-ws
systemctl restart ssl-ws

# Hapus Script
rm -f /root/ssl-ws.sh
