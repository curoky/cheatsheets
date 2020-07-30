---
title: Apt
category: CLI
layout: 2017/sheet
updated: 2020-07-25
---

### Proxy

Add follow lines to `/etc/apt/apt.conf`

```bash
Acquire::http::Proxy "http://127.0.0.1:1081";
Acquire::https::Proxy "http://127.0.0.1:1081";
```
