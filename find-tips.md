---
title: Find tips
category: CLI
layout: 2017/sheet
updated: 2020-07-29
---

### Change permissions for a folder

Ref: <https://stackoverflow.com/questions/3740152/how-do-i-change-permissions-for-a-folder-and-all-of-its-subfolders-and-files-in/11512211#11512211>

only change directory permissions in post

```bash
# 755 drwxr-xr-x
find post -type d -exec chmod 755 {} \;
# 644 -rw-r--r--
find post -type d -exec chmod 644 {} \;
```

### Remove file size > 100M

```bash
find /path/to -type f -size +100M -delete
```
