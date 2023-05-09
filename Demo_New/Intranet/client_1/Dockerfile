FROM ubuntu:latest

LABEL group="2TL2-1"

RUN apt -y update
RUN apt -y install links nano sudo dnsutils iputils-ping telnet mutt systemd

RUN adduser toto && echo "toto:toto" | chpasswd

COPY .muttrc /home/toto/.muttrc
COPY resolv.conf /etc/resolv.conf

CMD ["sleep", "infinity"]
