---
title: Git Proxy
category: Git
layout: 2017/sheet
updated: 2020-07-25
---

### Proxy

Git support the following protocols

- `git://`  Key: core.gitproxy
- `http://` Key: http.proxy
- `ssh://`  Need ssh's Key: ProxyCommand

Enable

```bash
# http
git config --global https.proxy http://127.0.0.1:1081
git config --global https.proxy http://127.0.0.1:1081

# socks
git config --global http.proxy socks5://127.0.0.1:1081
git config --global https.proxy socks5://127.0.0.1:1081
```

Disable

```bash
git config --global --unset http.proxy
git config --global --unset https.proxy
```
