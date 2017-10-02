#!/bin/bash
echo "Switching to Onnet Profile"
sudo networksetup -switchtolocation "Onnet"
sleep 1
echo "Shutting off en0"
sudo networksetup -setairportpower en0 off
sleep 1
echo "Starting en0"
sudo networksetup -setairportpower en0 on
