#!/bin/bash
shopt -s nocasematch
case "$1" in
offnet)
	echo "Switching to Offnet Profile"
	sudo networksetup -switchtolocation "Offnet"
	sleep 1
	echo 
	echo "Shutting down en0"
	sudo networksetup -setairportpower en0 off
	sleep 1
	echo "Starting en0"
	sudo networksetup -setairportpower en0 on
;;
onnet)
	echo "Switching to Onnet Profile"
	sudo networksetup -switchtolocation "Onnet"
	sleep 1
	echo
	echo "Shutting off en0"
	sudo networksetup -setairportpower en0 off
	sleep 1
	echo "Starting en0"
	sudo networksetup -setairportpower en0 on
;;

*)
	echo "Usage: $0 (offnet|onnet)"
	exit 1
esac
