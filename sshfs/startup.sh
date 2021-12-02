#! /bin/bash
useradd -m -s /bin/bash unix01
useradd -m -s /bin/bash unix02
useradd -m -s /bin/bash unix03
echo -e "unix01\nunix01" | passwd unix01
echo -e "unix02\nunix02" | passwd unix02
echo -e "unix03\nunix03" | passwd unix03

cp /opt/docker/ldap.conf /etc/ldap/
cp /opt/docker/nsswitch.conf /etc/
cp /opt/docker/nslcd.conf /etc/
cp /opt/docker/common-session /etc/pam.d/
cp /opt/docker/pam_mount.conf.xml /etc/security
mkdir /run/sshd
/usr/sbin/nslcd  
/usr/sbin/nscd 	
./home.sh
/usr/sbin/sshd	-D
/bin/bash

