Sonarr
======

Sonarr - https://sonarr.tv/

Latest stable Sonarr Git release from Arch Linux AUR using Packer to compile.

**Pull image**

```
docker pull jordond/arch-sonarr
```

**Run container**

```
docker run -d -p 8989:8989 -p 9897:9897 --name=<container name> -v <path for data files>:/data -v <path for config files>:/config -v /etc/localtime:/etc/localtime:ro jordond/arch-sonarr
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access Sonarr**

```
http://<host ip>:8989
```

or if you have enabled SSL

```
https://<host ip>:9897
```

