#!/bin/bash
echo "updating system"
sudo apt-get update
echo "install packets"
sudo apt-get install bridge-utils
echo "configure interfaces"
sudo cp interfaces /etc/network/interfaces
echo "installing soft AP"
sudo apt-get install hostapd
sudo wget ftp://ftp.heise.de/pub/ct/listings/1610-088.tgz
#sudo wget http://adafruit-download.s3.amazonaws.com/adafruit_hostapd_14128.zip
sudo tar xvfz 1610-088.tgz
echo "configuring hostap"
sudo cp 1610-088/hostapd.conf /etc/hostapd
sudo cp hostapd_conf /etc/default/hostapd
sudo rm -f 1610-088.tgz
#sudo unzip adafruit_hostapd_14128.zip
#sudo cp hostapd /usr/sbin/hostapd
#sudo rm -f adafruit_hostapd_14128.zip
#sudo rm hostapd
sudo cp sysctl.conf /etc/sysctl.conf
echo "installing DHCP server"
sudo apt-get install dnsmasq
sudo cp dnsmasq.conf /etc/dnsmasq.conf
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
echo "save Firewall rules"
sudo apt-get install iptables-persistent
dpkg-reconfigure iptables-persistent
