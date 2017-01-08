#!/bin/bash
. scp_to_server foo
ssh -t $server '\
    sudo apt-get install -y libssl-dev; \
    sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/philpl/setup-strong-strongswan/1ba1da98495d39534b7565dae2da73857319b4f8/setup.sh)"; \
    sudo ufw allow 1701; \
    sudo ufw allow 500; \
    sudo ufw allow 4500; \
    '