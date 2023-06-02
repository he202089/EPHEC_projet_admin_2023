# Utilisez une image MySQL comme point de départ
FROM mysql:latest

# Définissez les variables d'environnement pour la base de données
ENV MYSQL_ROOT_PASSWORD=p4ssw0rd
ENV MYSQL_DATABASE=woodytoys
ENV DB_USER_1=b2b
ENV DB_PASSWORD_1=motdepasseb2b
ENV DB_USER_2=intanet
ENV DB_PASSWORD_2=motdepasseintanet

# Copiez le fichier SQL d'initialisation dans le dossier du conteneur
COPY init.sql /docker-entrypoint-initdb.d/
COPY my.cnf /etc/my.cnf

# Exposez le port 3306 pour le trafic entrant
EXPOSE 3306
CMD ["mysqld"]


