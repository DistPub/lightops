#!/bin/bash
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
. /etc/lsb-release
echo "deb https://mirrors.tuna.tsinghua.edu.cn/docker/apt/repo ubuntu-$DISTRIB_CODENAME main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get -y install linux-image-extra-$(uname -r)
sudo apt-get -y install linux-image-extra-virtual
sudo apt-get -y install docker-engine
sudo sed -in "s/^.*DOCKER_OPTS.*$/DOCKER_OPTS=\"--registry-mirror=https:\/\/8i15ehg9.mirror.aliyuncs.com\"/g" /etc/default/docker
sudo restart docker
