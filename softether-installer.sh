#!/bin/bash

yum -y install wget curl git nano centos-release-scl
yum -y install devtoolset-7-gcc* devtoolset-7-binutils
ZONE=$(firewall-cmd --get-default-zone)
firewall-cmd --zone=$ZONE --add-service=openvpn --permanent
firewall-cmd --zone=$ZONE --add-service=ipsec --permanent
firewall-cmd --zone=$ZONE --add-service=https --permanent
firewall-cmd --zone=$ZONE --add-port=992/tcp --permanent
# 1194 UDP might not be opened
# If you get TLS error, this may be the cause
firewall-cmd --zone=$ZONE --add-port=1194/udp --permanent
# NAT-T
# Ref: https://blog.cles.jp/item/7295
firewall-cmd --zone=$ZONE --add-port=500/udp --permanent
firewall-cmd --zone=$ZONE --add-port=1701/udp --permanent
firewall-cmd --zone=$ZONE --add-port=4500/udp --permanent
# SoftEther
firewall-cmd --zone=$ZONE --add-port=5555/tcp --permanent
# For UDP Acceleration
firewall-cmd --zone=$ZONE --add-port=40000-44999/udp --permanent
firewall-cmd --reload

# Build SoftEther
cat se-build.sh | scl enable devtoolset-7 -

systemctl daemon-reload
systemctl enable softether-vpnserver
echo "Reboot and check if vpnserver is running"
