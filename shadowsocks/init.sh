#!/bin/bash
. scp_to_server docker-compose.yml
ssh -t $server '\
    docker-compose -f /tmp/docker-compose.yml down; \
    docker-compose -f /tmp/docker-compose.yml up -d; \
    sudo ufw allow 8388'
