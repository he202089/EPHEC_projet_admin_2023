FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

# Installation d'Apache, PHP et des dépendances nécessaires

RUN apt-get update && \
    apt-get install -y apache2 nano dnsutils iputils-ping snapd php libapache2-mod-php php-mysql certbot python3-certbot-apache && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copie des fichiers de configuration Apache pour les sites
COPY www.conf /etc/apache2/sites-available/www.conf
COPY b2b.conf /etc/apache2/sites-available/b2b.conf

# Copie du certificat SSL/TLS et de la clé privée sur le serveur

COPY fullchain.pem /etc/letsencrypt/live/www.l2-1.ephec-ti.be/fullchain.pem
COPY privkey.pem /etc/letsencrypt/live/www.l2-1.ephec-ti.be/privkey.pem
COPY options-ssl-apache.conf /etc/letsencrypt/options-ssl-apache.conf


# Activation des sites
RUN ln -s /etc/apache2/sites-available/www.conf /etc/apache2/sites-enabled/www.conf && \
    ln -s /etc/apache2/sites-available/b2b.conf /etc/apache2/sites-enabled/b2b.conf 


# Activation des modules Apache nécessaires
RUN a2enmod ssl
RUN a2enmod headers

# Copie des fichiers des sites web
COPY www/ /var/www/html/www/
COPY b2b/ /var/www/html/b2b/

# Activation des sites Apache nécessaires
RUN a2ensite default-ssl.conf

# Exposition des ports 80 (HTTP) et 443 (HTTPS)
EXPOSE 80
EXPOSE 443

# Démarrage d'Apache en premier plan
CMD ["apache2ctl", "-D", "FOREGROUND"]

