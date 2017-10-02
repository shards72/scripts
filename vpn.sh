#!/bin/bash

echo -n "Please enter OTP: "
read otp

printf 'shedward\n1586'$otp'\ny' | /opt/cisco/anyconnect/bin/vpn -s connect Ashburn
