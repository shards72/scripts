#!/bin/bash
echo "Switching to Offnet Profile"
sudo networksetup -switchtolocation "Offnet"
sleep 1
echo "Shutting down en0"
sudo networksetup -setairportpower en0 off
sleep 1
echo "Starting en0"
sudo networksetup -setairportpower en0 on
