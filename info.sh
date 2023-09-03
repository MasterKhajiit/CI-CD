#!/bin/bash

mkdir html

date > html/index.html

#show kernel data
echo -e "-------------------- Hostname info --------------------" >> html/index.html
hostnamectl >> html/index.html

#show ip data
echo -e "-------------------- Ip info --------------------" >> html/index.html
ip a >> html/index.html

#show CPU info
echo -e "-------------------- Processor info --------------------" >> html/index.html
cat /proc/cpuinfo >> html/index.html 

#show memory usage
echo -e "-------------------- RAM info --------------------" >> html/index.html
free -m >> html/index.html

#show hard drive data
echo -e "-------------------- HDD info --------------------" >> html/index.html
df -h >> html/index.html

#show PCI Devices
echo -e "-------------------- PCI info --------------------" >> html/index.html
lspci >> html/index.html

