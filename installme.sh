#!/bin/bash
sudo cp interfaces /etc/network/interfaces
sudo apt-get install hostapd
sudo wget ftp://ftp.heise.de/pub/ct/listings/1610-088.tgz
sudo wget http://adafruit-download.s3.amazonaws.com/adafruit_hostapd_14128.zip
sudo tar xvfz 1610-088.tgz
sudo cp 1610-088/hostapd.conf /etc/hostapd
sudo cp hostapd /etc/default/hostapd
sudo rm -f 1610-088.tgz
sudo rm -f adafruit_hostapd_14128.zip
sudo cp sysctl.conf /etc/sysctl.conf
