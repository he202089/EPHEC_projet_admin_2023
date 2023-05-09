FROM ubuntu:latest

LABEL group="2TL2-1"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update 
RUN apt-get install -y postfix dovecot-pop3d dovecot-imapd opendkim opendkim-tools postfix-policyd-spf-python
RUN mkdir -p /etc/opendkim/keys
RUN opendkim-genkey -b 2048 -d l2-1.ephec-ti.be -D /etc/opendkim/keys -s mail -v
RUN chown opendkim:opendkim /etc/opendkim/keys/mail.private

COPY dovecot /etc/dovecot
COPY postfix /etc/postfix
COPY ./postfix/policyd-spf.conf /etc/postfix-policyd-spf-python/policyd-spf.conf
COPY ./postfix/opendkim.conf /etc/opendkim.conf

RUN adduser toto && echo "toto:toto" | chpasswd
RUN adduser tutu && echo "tutu:tutu" | chpasswd

EXPOSE 25 143 587 993

CMD service postfix start && service dovecot start && sleep infinity && mkdir -p /etc/opendkim/keys 
# && opendkim-genkey -b 2048 -d l2-1.ephec-ti.be -D /etc/opendkim/keys -s mail -v && chown opendkim:opendkim /etc/opendkim/keys/mail.private