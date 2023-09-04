#!/bin/bash

mkdir html

date > html/index.html

#show kernel data
echo "-------------------- Hostname info --------------------" >> html/index.html
hostnamectl >> html/index.html

#show ip data
echo "-------------------- Ip info --------------------" >> html/index.html
ip a >> html/index.html

#show CPU info
echo "-------------------- Processor info --------------------" >> html/index.html
cat /proc/cpuinfo >> html/index.html 

#show memory usage
echo "-------------------- RAM info --------------------" >> html/index.html
free -m >> html/index.html

#show hard drive data
echo "-------------------- HDD info --------------------" >> html/index.html
df -h >> html/index.html

#show PCI Devices
echo "-------------------- PCI info --------------------" >> html/index.html
lspci >> html/index.html

