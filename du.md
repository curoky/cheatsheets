---
title: du
category: CLI
layout: 2017/sheet
updated: 2020-08-02
---

### 查看目录文件大小

Ref: <http://www.lostsaloon.com/technology/how-to-sort-du-command-output-by-size-in-linux/>

```bash
du -ahd1 | sort -h
# -a或-all 显示目录中个别文件的大小
# -h或--human-readable 以K，M，G为单位，提高信息的可读性
# -b/-k/-m 或--kilobytes 以B/KB/MB为单位
# -X<文件>或--exclude-from=<文件>
# --exclude=<目录或文件> 略过指定的目录或文件
# --max-depth=<目录层数> 超过指定层数的目录后，予以忽略
```
