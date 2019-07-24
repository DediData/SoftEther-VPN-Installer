![](https://img.shields.io/github/stars/DediData/SoftEther-VPN-Installer.svg) ![](https://img.shields.io/github/forks/DediData/SoftEther-VPN-Installer.svg) ![](https://img.shields.io/github/issues/DediData/SoftEther-VPN-Installer.svg)

## SoftEther-VPN-Installer
SoftEther VPN Installer for CentOS &amp; Ubuntu, etc

## One Line Run Installer:
```sh
wget -O softether-installer.sh https://raw.githubusercontent.com/DediData/SoftEther-VPN-Installer/master/softether-installer.sh && chmod +x softether-installer.sh && ./softether-installer.sh
```

### Restart VPN Server:
```sh
systemctl restart softether-vpnserver
```

### Stop VPN Server:
```sh
systemctl stop softether-vpnserver
```

### Start VPN Server:
```sh
systemctl start softether-vpnserver
```

### Enable VPN Server in boot loading:
```sh
systemctl enable softether-vpnserver
```

### Disable VPN Server in boot loading:
```sh
systemctl disable softether-vpnserver
```

##Management Methods:
### 1- Using SSH command prompt: 
Run in terminal:
```sh
vpncmd
```

Press 1 to select "Management of VPN Server or VPN Bridge"
then press Enter without typing anything to connect to the localhost server, and again press Enter without inputting anything to connect to server by server admin mode.
Then use command below to change admin password:
```sh
ServerPasswordSet
```

