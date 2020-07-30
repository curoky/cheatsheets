---
title: Git submodules
category: Git
layout: 2017/sheet
updated: 2020-07-26
---

Ref: <https://stackoverflow.com/questions/1030169/easy-way-to-pull-latest-of-all-git-submodules>

### add submodule

```bash
git submodule add git@....:/...
```

### init submodule

```bash
git submodule init
git submodule update
```

### update submudule

```bash
git pull --recurse-submodules
```

### delete submodule

```bash
# 逆初始化模块，其中{MOD_NAME}为模块目录，执行后可发现模块目录被清空
git submodule deinit {MOD_NAME}
# 删除.gitmodules中记录的模块信息（--cached选项清除.git/modules中的缓存）
git rm --cached {MOD_NAME}
# 提交更改到代码库，可观察到'.gitmodules'内容发生变更
git commit -am "Remove a submodule."
```
