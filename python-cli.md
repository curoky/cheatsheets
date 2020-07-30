---
title: Python CLI
category: CLI
layout: 2017/sheet
updated: 2020-07-28
---


### HTTP server

python2

```bash
python -m SimpleHTTPServer 8000
```

python3

```bash
python3 -m http.server 8000 --bind 127.0.0.1 -d
```

### virtualenv

install

```bash
pip install virtualenv
```

create virtual environment

```bash
virtualenv -p /usr/bin/python2.7 venv
```

active virtual environment

```bash
source venv/bin/activate
```

exit virtual environment

```bash
deactivate
```
