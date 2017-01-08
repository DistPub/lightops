#!/bin/bash
cd /tmp && \
wget -O linux-image-4.9.0.deb http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.9/linux-image-4.9.0-040900-generic_4.9.0-040900.201612111631_amd64.deb && \
sudo dpkg -i linux-image-4.9.0*.deb && \
sudo update-grub && \
sudo reboot
