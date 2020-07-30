---
title: pip
category: Python
layout: 2017/sheet
weight: -1
updated: 2020-07-25
---


### Config

```bash
# https://pip.pypa.io/en/stable/user_guide/#config-file
export PIP_CONFIG_FILE=$HOME/repos/dotfiles/fortress/pip/pip.conf
```

### Proxy

```bash
pip install lxml --proxy socks5:127.0.0.1:1080
pip install lxml --proxy http:127.0.0.1:1081
```

### Freeze requirements

```bash
pip freeze > requirements.txt
pip install -r requirements.txt
```
