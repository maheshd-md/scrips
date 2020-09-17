#!/bin/bash

echo "copying /etc/hosts"
sudo cp /home/ubuntu/files/hosts /etc
echo "setting permissions to key.pem"
chmod 400 /home/ubuntu/.ssh/key.pem
for SERVER in `cat /home/ubuntu/files/servers.txt`
do
  echo "adding figerpring to known_hosts"
  ssh-keyscan $SERVER >> /home/ubuntu/.ssh/known_hosts
done

