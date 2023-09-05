#!/bin/bash

mkdir html

date > html/index.html

#show kernel data
echo "<h2>-------------------- Hostname info --------------------</h2>" >> html/index.html
hostnamectl >> html/index.html

#show ip data
echo "<h2>-------------------- Ip info --------------------</h2>" >> html/index.html
ip a >> html/index.html

#show CPU info
echo "<h2>-------------------- Processor info --------------------</h2>" >> html/index.html
cat /proc/cpuinfo >> html/index.html 

#show memory usage
echo "<h2>-------------------- RAM info --------------------</h2>" >> html/index.html
free -m >> html/index.html

#show hard drive data
echo "<h2>-------------------- HDD info --------------------</h2>" >> html/index.html
df -h >> html/index.html

#show PCI Devices
echo "<h2>-------------------- PCI info --------------------</h2>" >> html/index.html
lspci >> html/index.html

#test webhook