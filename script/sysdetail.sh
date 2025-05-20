#!/usr/bin/bash

echo "$(cat /etc/os-release | head -n2)"
echo ""

echo "User: $(who | awk '/seat0/ {print $1}')"
echo "Time: $(who | awk '/seat0/ {print $3, $4}')"
echo ""

echo "Kernel: $(uname -r)"
echo "Root: $(df -h | awk '/rl-root/ {print $3,"/",$2,"-",$5}')"
echo "Boot: $(df -h | awk '/nvme/ {print $3,"/",$2,"-",$5}')"
echo "RAM: $(free -h | awk '/^Mem:/ {print $3,"/",$2}')"
echo "Swap: $(free -h | awk '/^Swap:/ {print $3,"/",$2}')"
