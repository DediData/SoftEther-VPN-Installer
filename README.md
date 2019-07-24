## SoftEther-VPN-Installer
SoftEther VPN Installer for CentOS &amp; Ubuntu, etc

## One Line Run Installer:
```sh
wget -O softether-installer.sh https://raw.githubusercontent.com/DediData/SoftEther-VPN-Installer/master/softether-installer.sh && chmod +x softether-installer.sh && ./softether-installer.sh
```

### Restart VPN Server:
systemctl restart softether-vpnserver

### Stop VPN Server:
systemctl stop softether-vpnserver

### Start VPN Server:
systemctl start softether-vpnserver

### Enable VPN Server in boot loading:
systemctl enable softether-vpnserver

### Disable VPN Server in boot loading:
systemctl disable softether-vpnserver

![](https://img.shields.io/github/stars/DediData/SoftEther-VPN-Installer.svg) ![](https://img.shields.io/github/forks/DediData/SoftEther-VPN-Installer.svg) ![](https://img.shields.io/github/issues/DediData/SoftEther-VPN-Installer.svg)
