#!/bin/bash

mkdir html

date > html/index.html

#show kernel data
echo -e "\n-------------------- Hostname info --------------------\n" >> html/index.html
hostnamectl >> html/index.html

#show ip data
echo -e "\n-------------------- Ip info --------------------\n" >> html/index.html
ip a >> html/index.html

#show CPU info
echo -e "\n-------------------- Processor info --------------------\n" >> html/index.html
cat /proc/cpuinfo >> html/index.html 

#show memory usage
echo -e "\n-------------------- RAM info --------------------\n" >> html/index.html
free -m >> html/index.html

#show hard drive data
echo -e "\n-------------------- HDD info --------------------\n" >> html/index.html
df -h >> html/index.html

#show PCI Devices
echo -e "\n-------------------- PCI info --------------------\n" >> html/index.html
lspci >> html/index.html

