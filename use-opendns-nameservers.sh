#!/bin/vbash

# make sure script is run as group vyattacfg
if [ 'vyattacfg' != $(id -ng) ]; then
 exec sg vyattacfg -c "$0 $@"
fi
echo $(date; echo "Using opendns nameservers";)
cw=/opt/vyatta/sbin/vyatta-cfg-cmd-wrapper
$cw begin
$cw delete service dns forwarding name-server 8.8.8.8
$cw delete service dns forwarding name-server 8.8.4.4
$cw set service dns forwarding name-server 208.67.222.222
$cw set service dns forwarding name-server 208.67.220.220
$cw commit
$cw end
