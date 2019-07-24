![](https://img.shields.io/github/stars/DediData/SoftEther-VPN-Installer.svg) ![](https://img.shields.io/github/forks/DediData/SoftEther-VPN-Installer.svg) ![](https://img.shields.io/github/issues/DediData/SoftEther-VPN-Installer.svg)

# Softether Server Auto Installer:
Supports: SoftEther, OpenVPN, IPSEC / L2TP, SSTP, User Management, User Statistics, etc

## Softether Auto Installer Multi Platform
* Softether Auto Installer Script for multi platforms
* Softether VPN server always latest version
* Checks for ```firewalld``` and add related rules

## SoftEther-VPN-Installer
SoftEther VPN Installer for CentOS &amp; Ubuntu, etc

## Instruction
Run the following one line on your command prompt:
```sh
bash <(curl -s https://raw.githubusercontent.com/DediData/SoftEther-VPN-Installer/master/softether-installer.sh)
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

## Management Methods:
### 1- Using SoftEther VPN Server Manager Application:
Download & Install "SoftEther VPN Server Manager":

https://www.softether-download.com/en.aspx?product=softether

Add your Server IP address and connect!
Then set an admin password and setup SoftEther VPN ! Enjoy !

### 2- Using SSH Command Prompt:
Run in terminal:
```sh
vpncmd
```
Press 1 to select "Management of VPN Server or VPN Bridge"

Then press Enter without typing anything to connect to the localhost server, and again press Enter without inputting anything to connect to server by server admin mode.

Then use command below to change admin password:
```sh
ServerPasswordSet
```
