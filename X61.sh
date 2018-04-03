#! /bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

[ "$EUID" -ne '0' ] && echo "Error,This script must be run as root! " && exit 1
# yum install -y http://vault.centos.org/6.7/centosplus/x86_64/Packages/kernel-2.6.32-573.1.1.el6.centos.plus.x86_64.rpm
yum install -y http://vault.centos.org/6.7/centosplus/x86_64/Packages/kernel-2.6.32-573.1.1.el6.centos.plus.x86_64.rpm
if [ ! -f "/boot/grub/grub.conf" ]; then
  echo -e "${red}Error:${plain} /boot/grub/grub.conf not found, please check it."
  exit 1
fi
sed -i 's/^default=.*/default=0/g' /boot/grub/grub.conf

echo
read -p "Info: The system needs to be restart. Do you want to reboot? [y/n]" is_reboot
if [[ ${is_reboot} == "y" || ${is_reboot} == "Y" ]]; then
    reboot
else
    exit
fi
