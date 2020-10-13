---
title: Hyper
category: Apps
layout: 2017/sheet
updated: 2020-09-16
weight: -5
intro: |
  [Hyper](https://hyper.is) A terminal built on web technologies.
---

## Issue
{: .-three-column}

### Scroll too fast when using tmux

Ref: <https://github.com/vercel/hyper/issues/3338#issuecomment-514700095>

```bash
bind-key -T copy-mode-vi WheelUpPane send -N1 -X scroll-up
bind-key -T copy-mode-vi WheelDownPane send -N1 -X scroll-down
```
