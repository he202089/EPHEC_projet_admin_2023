FROM ubuntu/bind9:latest
# Auteur du Dockerfile - Optionnel
MAINTAINER Groupe1
COPY named.conf /etc/bind/named.conf
COPY woodytoys.lab /etc/bind/woodytoys.lab
COPY woodytoys.lab.rr.zone /etc/bind/woodytoys.lab.rr.zone
# Variable d'environnement qui sera disponible au sein du conteneur.
#ENV MA_VAR ma_valeur
# Ouvrir/Exposer le port 53 du conteneur.
EXPOSE 53/udp
EXPOSE 53/tcp
# CMD permet de lancer des commandes directement dans le conteneur lorsqu'il sera lanc´e.
CMD ["named", "-g"]
