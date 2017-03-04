#!/bin/sh
echo lovell | sudo -S sshpass -p 'root' ssh -p 32769 -fN -L53:172.17.0.2:53 root@192.168.2.247
echo lovell | sudo -S sshpass -p 'root' ssh -p 32769 -fN -L9999:172.17.0.2:80 root@192.168.2.247
echo lovell | sudo -S nginx
