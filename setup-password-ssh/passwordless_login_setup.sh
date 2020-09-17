#!/bin/bash

for SERVER in `cat ~/files/servers.txt`
do
  echo "creating files directory"
  ssh ubuntu@$SERVER "mkdir ~/files"
  echo "copying key.pem to $SERVER"
  scp -o StrictHostKeyChecking=no ~/.ssh/key.pem ubuntu@$SERVER:~/.ssh
  echo "copying servers.txt to $SERVER"
  scp -o StrictHostKeyChecking=no ~/files/servers.txt ubuntu@$SERVER:~/files
  echo "copying .profile to $SERVER"
  scp -o StrictHostKeyChecking=no ~/.profile ubuntu@$SERVER:~/
  echo "copying hosts to $SERVER"
  scp -o StrictHostKeyChecking=no /etc/hosts ubuntu@$SERVER:~/files
  echo "copying run.sh to $SERVER"
  scp -o StrictHostKeyChecking=no ~/files/run.sh ubuntu@$SERVER:~/files
  echo "running run.sh"
  ssh -t ubuntu@$SERVER "bash ~/files/run.sh"
done

