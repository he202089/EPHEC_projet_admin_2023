FROM ubuntu:latest

LABEL group="2TL2-1"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update 
RUN apt-get install -y postfix nano dnsutils iputils-ping certbot dovecot-pop3d dovecot-imapd opendkim opendkim-tools postfix-policyd-spf-python
RUN mkdir -p /etc/opendkim/keys
# RUN opendkim-genkey -b 2048 -d l2-1.ephec-ti.be -D /etc/opendkim/keys -s mail -v
# RUN chown opendkim:opendkim /etc/opendkim/keys/mail.private
COPY mail.private /etc/opendkim/keys/mail.private
COPY fullchain.pem /etc/letsencrypt/live/www.l2-1.ephec-ti.be/fullchain.pem
COPY privkey.pem /etc/letsencrypt/live/www.l2-1.ephec-ti.be/privkey.pem
COPY 10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf
COPY dovecot/ /etc/dovecot
COPY postfix/ /etc/postfix
# COPY ./postfix/policyd-spf.conf /etc/postfix-policyd-spf-python/policyd-spf.conf
# COPY ./postfix/opendkim.conf /etc/opendkim.conf
# COPY spamassassin_header_checks /etc/postfix/spamassassin_header_checks
# COPY 15-mailboxes.conf /etc/dovecot/conf.d/15-mailboxes.conf
# COPY spamtest.sieve /etc/dovecot/sieve/global/spamtest.sieve
# COPY local.cf /etc/spamassassin/local.cf
# COPY 50_custom_rules.cf /etc/spamassassin/rules/50_custom_rules.cf
# COPY messages_légitimes /app/data/messages_légitimes
# COPY messages_spam /app/data/messages_spam
# Exécution de sa-update pour mettre à jour les règles de SpamAssassin
# RUN sa-update
# Formation de la base de données Bayes avec les exemples de messages
# RUN sa-learn --spam /app/data/messages_spam
# RUN sa-learn --ham /app/data/messages_légitimes

RUN adduser toto && echo "toto:toto" | chpasswd
RUN adduser tutu && echo "tutu:tutu" | chpasswd
RUN mkdir /var/mail/l2-1.ephec-ti.be/

#  créer les utilisateurs virtuels
RUN useradd -r -s /sbin/nologin -d /var/mail/mounir mounir && \
    echo "mounir:mounir" | chpasswd && \
    maildirmake.dovecot /var/mail/mounir && \
    chown -R mounir:mounir /var/mail/mounir && \
    useradd -r -s /sbin/nologin -d /var/mail/amaury amaury && \
    echo "amaury:amaury" | chpasswd && \
    maildirmake.dovecot /var/mail/amaury && \
    chown -R amaury:amaury /var/mail/amaury && \
    useradd -r -s /sbin/nologin -d /var/mail/matthew matthew && \
    echo "matthew:matthew" | chpasswd && \
    maildirmake.dovecot /var/mail/matthew && \
    chown -R matthew:matthew /var/mail/matthew

EXPOSE 25 143 587 993

CMD service postfix start && service dovecot start && sleep infinity && mkdir -p /etc/opendkim/keys 
# && opendkim-genkey -b 2048 -d l2-1.ephec-ti.be -D /etc/opendkim/keys -s mail -v && chown opendkim:opendkim /etc/opendkim/keys/mail.private