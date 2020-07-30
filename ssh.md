---
title: SSH
category: CLI
layout: 2017/sheet
weight: -1
updated: 2020-07-25
---


### Gen key

```bash
ssh-keygen -t rsa -C "some comment"
```

### Proxy

```bash
Host site
  HostName IP
  User name
  # use http
  ProxyCommand nc -X connect -x 127.0.0.1:1081 %h %p
  # use socks5
  # ProxyCommand nc -X 5 -x 127.0.0.1:1080 %h %p
```

### Ssh server disable password login

<https://www.cyberciti.biz/faq/how-to-disable-ssh-password-login-on-linux>

Add follow lines to `/etc/ssh/sshd_config`

```conf
ChallengeResponseAuthentication no
PasswordAuthentication no
UsePAM no
PermitRootLogin no
```

Then

```bash
systemctl reload sshd
```
