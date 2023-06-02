$ORIGIN l2-1.ephec-ti.be.
$TTL 86400
@     IN     SOA    soa.l2-1.ephec-ti.be.    hostmaster.l2-1.ephec-ti.be. (
                    2001062502 ; serial
                    21600      ; refresh after 6 hours
                    3600       ; retry after 1 hour
                    604800     ; expire after 1 week
                    86400 )    ; minimum TTL of 1 day

      IN     NS     ns.l2-1.ephec-ti.be.
      IN     MX     10     mail.l2-1.ephec-ti.be.


ns           IN     A       192.168.2.1
www          IN     A       192.168.2.2
b2b          IN     A       192.168.2.2
mail         IN     A       192.168.2.4
