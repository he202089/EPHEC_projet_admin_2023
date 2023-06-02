# Utilisez une image Apache PHP comme point de départ
FROM php:7.4-apache

# Copiez les fichiers du site web dans le dossier du serveur web
COPY html/ /var/www/html/
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Installez les dépendances PHP nécessaires
RUN docker-php-ext-install mysqli

# Activez le module Apache pour PHP
RUN a2enmod rewrite

# Exposez le port 80 pour le trafic entrant
EXPOSE 8080

# Démarrez Apache une fois le conteneur lancé
CMD ["apache2-foreground"]


