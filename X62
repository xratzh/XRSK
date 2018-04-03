#! /bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

[ "$EUID" -ne '0' ] && echo "Error,This script must be run as root! " && exit 1

KernelList="$(rpm -qa |grep 'kernel' |awk '{print $1}')"
[ -z "$(echo $KernelList |grep -o kernel-2.6.32-573.1.1.el6)" ] && echo "Install error." && exit 1
for KernelTMP in `echo "$KernelList"`
 do
  [ "$KernelTMP" != "kernel-2.6.32-573.1.1.el6" ] && echo -ne "Uninstall Old Kernel\n\t$KernelTMP\n" && yum remove "$KernelTMP" -y >/dev/null 2>&1
done

yum remove kernel-headers -y
# yum install -y http://vault.centos.org/6.7/centosplus/x86_64/Packages/kernel-headers-2.6.32-573.1.1.el6.centos.plus.x86_64.rpm
# yum install -y http://vault.centos.org/6.7/centosplus/x86_64/Packages/kernel-devel-2.6.32-573.1.1.el6.centos.plus.x86_64.rpm
yum install -y http://vault.centos.org/6.7/centosplus/x86_64/Packages/kernel-headers-2.6.32-573.1.1.el6.centos.plus.x86_64.rpm
yum install -y http://vault.centos.org/6.7/centosplus/x86_64/Packages/kernel-devel-2.6.32-573.1.1.el6.centos.plus.x86_64.rpm
yum install -y http://vault.centos.org/6.7/centosplus/x86_64/Packages/kernel-firmware-2.6.32-573.1.1.el6.centos.plus.noarch.rpm

sed -i '/\[main]/a\exclude=kernel*' /etc/yum.conf   # 防止内核由于update产生变动
