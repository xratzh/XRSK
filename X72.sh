#! /bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

[ "$EUID" -ne '0' ] && echo "Error,This script must be run as root! " && exit 1

KernelList="$(rpm -qa |grep 'kernel' |awk '{print $1}')"
[ -z "$(echo $KernelList |grep -o kernel-3.10.0-229.1.2.el7.x86_64)" ] && echo "Install error." && exit 1
for KernelTMP in `echo "$KernelList"`
 do
  [ "$KernelTMP" != "kernel-3.10.0-229.1.2.el7.x86_64" ] && echo -ne "Uninstall Old Kernel\n\t$KernelTMP\n" && yum remove "$KernelTMP" -y >/dev/null 2>&1
done

yum remove kernel-headers -y
# http://mirror.rc.usf.edu/compute_lock/elrepo/kernel/el7/x86_64/RPMS/
yum install -y https://buildlogs.centos.org/c7.01.u/kernel/20150327030147/3.10.0-229.1.2.el7.x86_64/kernel-headers-3.10.0-229.1.2.el7.x86_64.rpm
yum install -y https://buildlogs.centos.org/c7.01.u/kernel/20150327030147/3.10.0-229.1.2.el7.x86_64/kernel-devel-3.10.0-229.1.2.el7.x86_64.rpm
yum install -y https://buildlogs.centos.org/c7.01.u/kernel/20150327030147/3.10.0-229.1.2.el7.x86_64/kernel-tools-libs-3.10.0-229.1.2.el7.x86_64.rpm
yum install -y https://buildlogs.centos.org/c7.01.u/kernel/20150327030147/3.10.0-229.1.2.el7.x86_64/kernel-tools-3.10.0-229.1.2.el7.x86_64.rpm

sed -i '/\[main]/a\exclude=kernel*' /etc/yum.conf # 防止内核由于update产生变动
