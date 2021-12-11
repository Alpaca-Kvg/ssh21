# SSH

## @alpacakvg ASIX M06 2020-2021

ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **alpacakvg/ssh21:base** Host base amb el servei SSH engegat. El host està configurat 
  amb PAM per permetre usuaris locals (unix01, etc) i usuaris de LDAP (pere,...). Cal
  engegar el container conjuntament amb el servei LDAP.

```
$ docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d alpacakvg/ldap21:group 
$ docker run --rm --name ssh.edt.org  -h ssh.edt.org  --net 2hisix -p 2022:22 -d alpacakvg/ssh21:base
```

Es pot engegar amb docker-compose:
```
$ docker-compose up -d
$ docker compose down
```

