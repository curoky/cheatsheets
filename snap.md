---
title: snap
category: CLI
layout: 2017/sheet
weight: -1
updated: 2020-07-25
---

### Proxy

set

```bash
sudo snap set system proxy.https=http://127.0.0.1:1090
sudo snap set system proxy.http=http://127.0.0.1:1090
```

unset

```bash
sudo snap set system proxy.http=null
sudo snap set system proxy.https=null
```
