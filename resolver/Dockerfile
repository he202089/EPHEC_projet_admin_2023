FROM ubuntu/bind9

# Install bind9
RUN apt-get update && apt-get install -y bind9

# Copy the configuration files
COPY named.conf /etc/bind/named.conf
COPY named.conf.options /etc/bind/named.conf.options
COPY named.conf.local /etc/bind/named.conf.local

# Expose the ports
EXPOSE 53/udp
EXPOSE 53/tcp