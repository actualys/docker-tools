# docker-tools
Internal tools dockerized in Actualys web agency.


## LDAP Setup

docker-compose.yml

````yaml
ldap:
  image: actualys/ldap
  restart: always
  ports:
    - "389:389"
    - "636:636"
  environment:
    - LDAP_DOMAIN=domain.local
    - LDAP_PASSWORD=password
  volumes:
    - ./conf:/etc/ldap/slapd.d
    - ./data:/var/lib/ldap
````

Login with those credentials :

login : cn=admin,dc=domain,dc=local

password : password
