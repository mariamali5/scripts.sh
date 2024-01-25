#!/bin/bash
warp-cli connect
cd Downloads
sudo openvpn mariamelzeny5(1).ovpn
ping 10.10.10.10
sleep(4)
echo "done!"
warp-cli disconnect
