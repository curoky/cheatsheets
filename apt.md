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

Some helper function

```bash
function set-apt-proxy() {
  echo "set apt proxy on ${_HTTP_PROXY}"
  sudo sed -i -e '/^[#]*Acquire::http[s]*::Proxy/d' /etc/apt/apt.conf
  sudo bash -c "echo \"Acquire::http::Proxy \\\"${_HTTP_PROXY}\\\";\" >> /etc/apt/apt.conf"
  sudo bash -c "echo \"Acquire::https::Proxy \\\"${_HTTP_PROXY}\\\";\"  >> /etc/apt/apt.conf"
}

function unset-apt-proxy() {
  echo "unset apt proxy"
  sudo sed -i -e '/^[#]*Acquire::http[s]*::Proxy/d' /etc/apt/apt.conf
  sudo sed -i -e '/^$/d' /etc/apt/apt.conf
}
```

### Show installed list

```bash
apt list --installed
```
