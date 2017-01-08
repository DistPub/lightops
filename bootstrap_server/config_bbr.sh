#!/bin/bash
echo "net.core.default_qdisc=fq" | sudo tee -a /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
sudo sysctl net.ipv4.tcp_available_congestion_control
sudo lsmod | grep bbr
