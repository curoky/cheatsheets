---
title: Bash pipe
category: CLI
layout: 2017/sheet
updated: 2020-08-02
---

### Pass args for script when going thru pipe

Ref: <https://stackoverflow.com/questions/14693100/pass-args-for-script-when-going-thru-pipe>

File `foo.sh` with the following content

```bash
#!/usr/bin/env bash

echo "\$0=$0"
echo "\$1=$1"
echo "\$2=$2"
echo "\$@=$@"
echo "\$*=$*"
```

将这个文件读取到管道并用 sh 运行，想要给其传递参数，需要加`-s --`参数

注：如果要传递参数不是以`-`开头，则也可以不传递`--`

```bash
$ cat foo.sh | bash -s -- -1 -2
# $0=bash
# $1=-1
# $2=-2
# $@=-1 -2
# $*=-1 -2
```
