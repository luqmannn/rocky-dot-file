#!/usr/bin/bash

os_version=$(head -n2 /etc/os-release)
printf "%s\n" "$os_version"
printf "\n"

user=$(who | awk '/seat0/ {print $1}')
login_time=$(who | awk '/seat0/ {print $3, $4}')
printf "User: %s\n" "$user"
printf "Login: %s\n" "$login_time"
printf "\n"

kernel=$(uname -r)
root_pttn=$(df -h | awk '/rl-root/ {print $3,"/",$2,"-",$5}')
boot_pttn=$(df -h | awk '/nvme/ {print $3,"/",$2,"-",$5}')
ram=$(free -h | awk '/^Mem:/ {print $3,"/",$2}')
swap=$(free -h | awk '/^Swap:/ {print $3,"/",$2}')

printf "Kernel: %s\n" "$kernel"
printf "Root: %s\n" "$root_pttn"
printf "Boot: %s\n" "$boot_pttn"
printf "RAM: %s\n" "$ram"
printf "Swap: %s\n" "$swap"
