FROM ubuntu/bind9:latest

LABEL group="2TL2-1"

COPY named.conf /etc/bind/named.conf
COPY woodytoys.lab /etc/bind/woodytoys.lab
COPY woodytoys.lab.reverse /etc/bind/woodytoys.lab.reverse

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named", "-g"]
