$ORIGIN l2-1.ephec-ti.be.
$TTL 86400
@     IN     SOA    soa.l2-1.ephec-ti.be.    hostmaster.l2-1.ephec-ti.be. (
                    2001062501 ; serial
                    21600      ; refresh after 6 hours
                    3600       ; retry after 1 hour
                    604800     ; expire after 1 week
                    86400 )    ; minimum TTL of 1 day

      IN     NS     ns.l2-1.ephec-ti.be.
      IN     MX     10     mail.l2-1.ephec-ti.be.


ns           IN     A       188.34.180.243
b2b          IN     A       188.34.180.243
www          IN     A       188.34.180.243
mail         IN     A       188.34.180.243

imap         IN     CNAME   mail
pop3         IN     CNAME   mail
smtp         IN     CNAME   mail
l2-1.ephec-ti.be.     IN     TXT     "v=spf1 mx -all"
_dmarc.l2-1.ephec-ti.be. IN TXT "v=DMARC1; p=quarantine; sp=quarantine; rua=mailto:postmaster@l2-1.ephec-ti.be.; ruf=mailto:postmaster@l2-1.ephec-ti.be.; fo=1"