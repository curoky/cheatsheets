---
title: distcc
category: CLI
layout: 2017/sheet
updated: 2020-09-13
---

### Set distcc hosts

use environment

```bash
export DISTCC_HOSTS='--randomize 10.10.10.10:2020/256,lzo 10.10.10.10:2020/256,lzo'
```

use config file(you can get path from `distcc --help`)

- `$DISTCC_DIR/hosts`
- `~/.distcc/hosts`
- `{{install root}}/etc/distcc/hosts`

```txt
--localslots_cpp=64 --randomize 10.10.10.10:2020/256,lzo 10.10.10.10:2020/256,lzo
```
