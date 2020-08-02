---
title: time
category: CLI
layout: 2017/sheet
updated: 2020-08-02
---

### whats' the time

- In sh: time is /usr/bin/time
- In bash: time is a shell keyword
- In zsh: time is a reserved word

### calculate loop time

In bash:

```bash
N=100
time (for i in $(eval echo "{1..$N}"); do type ls &>/dev/null; done)
```

In zsh:

```zsh
time (repeat $N {type ls &>/dev/null})
```

with /usr/bin/time

```bash
/usr/bin/time -f "%E" bash -c "for (( i=0; i<$N; i++ )); do type ls &>/dev/null; done;"
```
