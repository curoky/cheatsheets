---
title: Vim tips
category: Vim
layout: 2017/sheet
updated: 2020-07-28
---


### Custom vimrc path

Ref: <https://stackoverflow.com/questions/4618151/how-to-reference-source-a-custom-vimrc-file>

```bash
export VIMINIT="source ${__VIM_RC_PATH}"
```

```bash
alias vim="vim -u ${__VIM_RC_PATH}"
```
