---
title: unzip tips
category: CLI
layout: 2017/sheet
updated: 2020-09-29
---

### equivalent to tar's strip components 1 in unzip

Ref: <https://superuser.com/questions/518347/equivalent-to-tars-strip-components-1-in-unzip>

unzip 并没有类似`--strip-components`的参数，但是也实现达到类似效果。

#### 方法一：使用 -j 参数

unzip -j 参数，解压时不会保留任何目录结构，所有的文件直接解压在指定目录

```txt
   -j     junk  paths.   The  archive's directory structure is not recreated; all files are deposited in the
          extraction directory (by default, the current one).
```

#### 方法二：编写方法

假设只去掉根目录

```bash
unzip -d "$dest" "$zip" && f=("$dest"/*) && mv "$dest"/*/* "$dest" && rmdir "${f[@]}"
```

可以封装一个函数，并把中间产物放在临时目录中

```bash
unzip-strip() (
    local zip=$1
    local dest=${2:-.}
    local temp=$(mktemp -d) && unzip -d "$temp" "$zip" && mkdir -p "$dest" &&
    shopt -s dotglob && local f=("$temp"/*) &&
    if (( ${#f[@]} == 1 )) && [[ -d "${f[0]}" ]] ; then
        mv "$temp"/*/* "$dest"
    else
        mv "$temp"/* "$dest"
    fi && rmdir "$temp"/* "$temp"
)
```
