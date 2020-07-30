---
title: npm mirror
category: JavaScript
layout: 2017/sheet
weight: -1
updated: 2020-07-25
---

### With environment

```bash
export NPM_CONFIG_REGISTRY=https://registry.npm.taobao.org
```

### With config

```bash
npm config set registry https://registry.npm.taobao.org
npm info underscore （如果上面配置正确这个命令会有字符串 response）
```

### With command once

```bash
npm --registry https://registry.npm.taobao.org info underscore
```

### With npmrc

Add follow lines to `~/.npmrc`.

```bash
registry = https://registry.npm.taobao.org
```
