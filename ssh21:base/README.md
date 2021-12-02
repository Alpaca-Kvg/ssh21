# SSH

## @edt ASIX M06 2020-2021


Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)

ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **edtasixm06/ssh20:base** Host base amb el servei SSH engegat. El host està configurat 
  amb PAM per permetre usuaris locals (unix01, etc) i usuaris de LDAP (pere,...). Cal
  engegar el container conjuntament amb el servei LDAP.

```
$ docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d edtasixm06/ldap20:latest 
$ docker run --rm --name ssh.edt.org  -h ssh.edt.org  --net 2hisix -p 2022:22 -d edtasixm06/ssh20:base
```

Es pot engegar amb docker-compose:
```
$ docker-compose up -d
$ docker compose down
```

