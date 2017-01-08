#!/bin/bash
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo restart docker
