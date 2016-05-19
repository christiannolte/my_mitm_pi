#!/bin/bash
sudo cp interfaces /etc/network/interfaces
sudo apt-get install hostapd
sudo wget ftp://ftp.heise.de/pub/ct/listings/1610-088.tgz
sudo wget http://adafruit-download.s3.amazonaws.com/adafruit_hostapd_14128.zip
tar xvfz 1610-088.tgz
