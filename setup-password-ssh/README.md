###Setup passwordless ssh between aws ec2 instances

This script `passwordless_login_setup.sh` setup the passwordless ssh between your ec2 instances so you can login to any instance without password or pem file.

# Presumtions / Prerequisites
All the instances are ubuntu instances with username ubuntu.
Same pem file is selected while lauching all the ec2 instances.
You have pem file to access the ec2 instances.
Port 22 of all the instances is open to access.

#How to run?

1. Copy your pem file, lets say key.pem, to jumpbox/edge device into ~/.ssh folder
2. Login to jumpbox
3. Create directory ~/files
4. Copy passwordless_login_setup.sh and run.sh to ~/files directory
4. Create file ~/files/servers.txt
5. Add the hostnames of all instances in servers.txt
6. Add the hostnames of all instances with their IP addresses in /etc/hosts
7. Execute: `sh ~/files/passwordless_login_setup.sh



