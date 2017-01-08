#!/bin/bash
pubkey="$HOME/.ssh/id_rsa.pub"
if [ ! -f $pubkey ]; then
	echo "not found id_rsa.pub, please generate it by use below command!"
	echo "ssh-keygen -t rsa"
	exit 1
fi

read -p "Please input [somebody@server-host]:"
server=$REPLY

echo "### setup will ask you input your password 5 times ###"
scp ~/.ssh/id_rsa.pub $server:/tmp/
ssh -t $server "sudo mkdir -p ~/.ssh/"
ssh -t $server "cat /tmp/id_rsa.pub | sudo tee -a ~/.ssh/authorized_keys2"
ssh $server "echo 'success setup ssh auto login'"
