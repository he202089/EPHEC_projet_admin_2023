FROM ubuntu/bind9:latest

LABEL group="2TL2-1"

COPY named.conf /etc/bind/named.conf

COPY woodytoys.lab /etc/bind/woodytoys.lab
COPY 0.168.192.in-addr.arpa /etc/bind/0.168.192.in-addr.arpa
COPY l2-1.ephec-ti.be /etc/bind/l2-1.ephec-ti.be
#COPY Kwoodytoys.lab.+007+65033.private /etc/bind/keys
#RUN apt update && apt -y install rng-tools nano sudo
RUN apt-get update && apt-get upgrade -y && apt -y install nano sudo

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named", "-g"]
