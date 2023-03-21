FROM ubuntu:latest

LABEL group="2TL2-1"

RUN apt -y update
RUN apt -y install links nano sudo dnsutils iputils-ping telnet mutt

COPY .muttrc /root/.muttrc

CMD ["sleep", "infinity"]
