#! /bin/bash

useradd -m -s /bin/bash unix01
useradd -m -s /bin/bash unix02
useradd -m -s /bin/bash unix03
echo -e "unix01\nunix01" | passwd unix01
echo -e "unix02\nunix02" | passwd unix02
echo -e "unix03\nunix03" | passwd unix03

cp /opt/docker/nslcd.conf /etc/
cp /opt/docker/login.defs /etc/login.defs
cp /opt/docker/pam_mount.conf.xml /etc/security
cp /opt/docker/nsswitch.conf /etc
cp /opt/docker/common-session /etc/pam.d/
chmod 600 id_rsa.pub
mkdir /home/unix01/.ssh
cp id_rsa.pub /home/unix01/.ssh/authorized_keys
chown unix01.unix01 /home/unix01/.ssh/authorized_keys
/etc/init.d/ssh start
/etc/init.d/ssh stop
service nscd start
service nslcd start 
/usr/sbin/sshd -d



