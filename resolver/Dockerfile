FROM ubuntu/bind9

# Install bind9
RUN apt-get update && apt-get install -y bind9

# Copy the configuration file
COPY named.conf /etc/bind/named.conf

# Expose the ports
EXPOSE 53/udp
EXPOSE 53/tcp

# Start the service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf"]