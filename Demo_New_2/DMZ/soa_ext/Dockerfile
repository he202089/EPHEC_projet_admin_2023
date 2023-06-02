FROM ubuntu/bind9:latest

LABEL group="2TL2-1"

COPY named.conf /etc/bind/named.conf
COPY named.conf.options /etc/bind/named.conf.options

COPY 31.178.51.in-addr.arpa /etc/bind/31.178.51.in-addr.arpa
COPY 31.178.51.in-addr.arpa.signed /etc/bind/31.178.51.in-addr.arpa.signed
COPY K31.178.51.in-addr.arpa.ksk.private /etc/bind/K31.178.51.in-addr.arpa.ksk.private
COPY K31.178.51.in-addr.arpa.ksk.key /etc/bind/K31.178.51.in-addr.arpa.ksk.key
COPY K31.178.51.in-addr.arpa.zsk.private /etc/bind/K31.178.51.in-addr.arpa.zsk.private
COPY K31.178.51.in-addr.arpa.zsk.key /etc/bind/K31.178.51.in-addr.arpa.zsk.key

COPY l2-1.ephec-ti.be /etc/bind/l2-1.ephec-ti.be
COPY Kl2-1.ephec-ti.be.zsk.key /etc/bind/Kl2-1.ephec-ti.be.zsk.key
COPY Kl2-1.ephec-ti.be.zsk.private /etc/bind/Kl2-1.ephec-ti.be.zsk.private
COPY Kl2-1.ephec-ti.be.ksk.key /etc/bind/Kl2-1.ephec-ti.be.ksk.key
COPY Kl2-1.ephec-ti.be.ksk.private /etc/bind/Kl2-1.ephec-ti.be.ksk.private
COPY l2-1.ephec-ti.be.signed /etc/bind/l2-1.ephec-ti.be.signed
COPY named.conf.local /etc/bind/named.conf.local
RUN apt-get update && apt-get upgrade -y && apt -y install nano opendkim sudo rng-tools dnsutils iputils-ping

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named", "-g"]
