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
