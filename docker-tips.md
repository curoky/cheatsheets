---
title: Docker CLI Tips
category: Devops
layout: 2017/sheet
updated: 2020-07-26
---

### Enable exec on /dev/shm

Ref: <https://github.com/moby/moby/issues/6758>

```bash
docker run -it \
  -v /dev/shm --tmpfs /dev/shm:rw,nosuid,nodev,exec,size=4g \
  debian mount | grep shm
```

### copy a file from an image to a host

Ref: <https://stackoverflow.com/questions/25292198/docker-how-can-i-copy-a-file-from-an-image-to-a-host>

```bash
id=$(docker create image-name)
docker cp $id:path - > local-tar-file
docker rm -v $id
```

```bash
docker run -v $PWD:/opt/mount --rm --entrypoint cp image:version /data/libraries.tgz /opt/mount/libraries.tgz
```

```bash
docker cp $(docker create --rm registry.example.com/ansible-base:latest):/home/ansible/.ssh/id_rsa ./hacked_ssh_key
```

### Dockerd proxy

Ref: <https://docs.docker.com/config/daemon/systemd/#httphttps-proxy>

Create a file named `/etc/systemd/system/docker.service.d/http-proxy.conf` that adds the HTTP_PROXY/HTTPS_PROXY environment variable

```bash
[Service]
Environment="HTTP_PROXY=http://proxy.example.com:80"
Environment="HTTPS_PROXY=https://proxy.example.com:443"
Environment="NO_PROXY=localhost,127.0.0.1,docker-registry.example.com,.corp"
```

Verify that the configuration has been loaded and matches the changes you made, for example

```bash
sudo systemctl show --property=Environment docker

Environment=HTTP_PROXY=http://proxy.example.com:80 HTTPS_PROXY=https://proxy.example.com:443 NO_PROXY=localhost,127.0.0.1,docker-registry.example.com,.corp
```
