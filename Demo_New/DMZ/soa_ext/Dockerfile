FROM ubuntu/bind9:latest

LABEL group="2TL2-1"

COPY named.conf /etc/bind/named.conf

COPY 180.34.188.in-addr.arpa /etc/bind/180.34.188.in-addr.arpa
COPY l2-1.ephec-ti.be /etc/bind/l2-1.ephec-ti.be

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named", "-g"]
