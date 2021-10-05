#Disabling selinux and Firewall and Disable swap
swapoff -a
systemctl stop firewalld
systemctl disable firewalld
setenforce 0
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
reboot

