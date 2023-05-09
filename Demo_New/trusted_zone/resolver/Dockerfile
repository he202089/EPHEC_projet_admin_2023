FROM ubuntu/bind9:latest

LABEL group="2TL2-1"

COPY named.conf /etc/bind/named.conf

COPY woodytoys.lab /etc/bind/woodytoys.lab
COPY 0.168.192.in-addr.arpa /etc/bind/0.168.192.in-addr.arpa
COPY l2-1.ephec-ti.be /etc/bind/l2-1.ephec-ti.be

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named", "-g"]
