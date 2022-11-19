#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate

# Disable ntp server
sed -i "s/set system.ntp.enable_server='1'/set system.ntp.enable_server='0'/g" package/base-files/files/bin/config_generate
