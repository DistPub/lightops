#!/bin/bash
. ./init_ssh_auto_login.sh
. ./init_sudo_no_password.sh
. ./init_ufw.sh
. ssh_and_execute "\
    sudo apt-get update; \
    sudo locale-gen zh_CN.UTF-8; \
    sudo apt-get install -y software-properties-common python-software-properties git"

# 升级 tcp 拥塞算法 到 google bbr 协议，如果需要请移除掉注释
#. ./scp_and_execute upgrade_kernel_bbr.sh
#. ./scp_and_execute config_bbr.sh
