#ssh
FROM debian:latest
LABEL version="1.0"
LABEL author="@AlpacaKvg ASIX-M06"
LABEL subject="ssh host"
RUN apt-get update
#ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install procps iproute2 tree nmap vim less finger passwd libpam-pwquality libpam-mount libnss-ldapd libpam-ldapd nslcd nslcd-utils ldap-utils openssh-server 
RUN mkdir /opt/docker
RUN mkdir /root/.ssh/
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
RUN chmod +x /opt/docker/home.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh
