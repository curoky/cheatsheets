---
title: envsubst
category: CLI
layout: 2017/sheet
updated: 2020-08-30
---

envsubst 主要用处是使用环境变量中的 key-value 替换输入流（通常重定向从文件）中的变量并输出（通常重定向到文件）

envsubst is included in gettext package.

### basic usage

```bash
export A=1 && export B=2 && export C=2
echo "\${A}-\${B}-\{C}" | envsubst

# 仅替换指定变量
echo "\${A}-\${B}-\${C}" | envsubst '${A}'

# 更加广泛的使用方式是
envsubst < /path/to/template > /path/to/config
```
