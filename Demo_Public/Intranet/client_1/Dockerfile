FROM ubuntu:latest

LABEL group="2TL2-1"

RUN apt -y update
RUN apt -y install links nano sudo dnsutils iputils-ping telnet mutt

RUN adduser toto && echo "toto:toto" | chpasswd

COPY .muttrc /home/toto/.muttrc

CMD ["sleep", "infinity"]
