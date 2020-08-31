---
title: awk
category: CLI
layout: 2017/sheet
updated: 2020-08-30
---

### Print specific column

```bash
# 每行按空格或TAB分割，输出文本中的1、4项
awk '{print $1,$4}' log.txt

# 使用","分割
awk -F, '{print $1,$2}' log.txt
````
