# SSH

## @edt ASIX M06 2020-2021


Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)

ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **edtasixm06/ssh20:sshfs**  Host *client* que accedeix al servidor SSH. Aquest host client
  està configurat per muntar els homes dels usuaris via *sshfs* del servidor SSH. S'ha
  configurat *syste-auth* per usar *pam_mount* i configurat *pam_mount.conf.xml* per muntar
  un recurs de xarxa al home dels usuaris via *SSHFS*.
 
  Atenció, cal usar en el container --privileged per poder fer els muntatges nfs.

```
docker run --rm --name sshfs.edt.org --hostname sshfs.edt.org --net 2hisix --privileged --cap-add SYS_ADMIN --device /dev/fuse  --security-opt apparmor:unconfined -it edtasixm06/ssh20:sshfs
```

