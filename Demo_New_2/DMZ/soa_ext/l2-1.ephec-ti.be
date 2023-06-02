$ORIGIN l2-1.ephec-ti.be.
$TTL 86400
@     IN     SOA    soa.l2-1.ephec-ti.be.    hostmaster.l2-1.ephec-ti.be. (
                    2001062519 ; serial
                    21600      ; refresh after 6 hours
                    3600       ; retry after 1 hour
                    604800     ; expire after 1 week
                    86400 )    ; minimum TTL of 1 day

      IN     NS     ns.l2-1.ephec-ti.be.
      IN     MX     10     mail.l2-1.ephec-ti.be.


ns           IN     A       51.178.31.113
b2b          IN     A       51.178.31.113
www          IN     A       51.178.31.113
mail         IN     A       51.178.31.113

imap         IN     CNAME   mail
pop3         IN     CNAME   mail
smtp         IN     CNAME   mail
l2-1.ephec-ti.be. IN TXT "v=spf1 mx include:_spf.google.com ~all"
_dmarc.l2-1.ephec-ti.be. IN TXT "v=DMARC1; p=reject; rua=mailto:mounir@l2-1.ephec-ti.be; ruf=mailto:mounir@l2-1.ephec-ti.be; fo=1; adkim=r; aspf=r;"
mail._domainkey IN      TXT     ( "v=DKIM1; h=rsa-sha256; k=rsa; s=email; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtYnl6DqaozgQuoTeApjYUOwyu5y8j4kgTTtYpEmezBL79Zop0QFeVTatXX0XklL5A4pR2Kw3Omv6a1+7koT4y/XfmX2DEcUhPUuRjCrk4TrA3R5/kTOnGNF5crktcmzOzaVhoxh79aeMr55hPKJg3DrutxVfpSdPeWXW+iHU5z3t4e0uZ3ncdTlJIT/evpIcYhw74AXhtO3+pt"
          "fHQFzdHb2E2wAKZ4dUcUdu2RTs433wh/tsoMS15D5XKU9iwNU4yH8sa7E1vkRtBRA49h+Xo/84y06mNPqzMJlpZD0rgqXRFQwYkUOeHDMY59WkIOivY6hcxNeDvALmefv95nR6JwIDAQAB" )  ; ----- DKIM key mail for l2-1.ephec-ti.be

$INCLUDE "/etc/bind/Kl2-1.ephec-ti.be.ksk.key";
$INCLUDE "/etc/bind/Kl2-1.ephec-ti.be.zsk.key";

