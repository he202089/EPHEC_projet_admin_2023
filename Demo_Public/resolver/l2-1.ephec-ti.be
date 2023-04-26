$ORIGIN l2-1.ephec-ti.be.
$TTL 86400
@     IN     SOA    soa.l2-1.ephec-ti.be.    hostmaster.l2-1.ephec-ti.be. (
                    2001062501 ; serial
                    21600      ; refresh after 6 hours
                    3600       ; retry after 1 hour
                    604800     ; expire after 1 week
                    86400 )    ; minimum TTL of 1 day

      IN     NS     ns.l2-1.ephec-ti.be.

ns           IN     A       192.168.0.1
resolver     IN     A       192.168.0.1
www          IN     A       192.168.0.2
