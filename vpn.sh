#!/bin/bash

echo -n "Please enter OTP: "
read otp

printf 'shedward\n'$otp'\ny' | /opt/cisco/anyconnect/bin/vpn -s connect Ashburn
