---
title: Linux tips
category: Linux
layout: 2017/sheet
updated: 2020-08-02
---

### Change user name

1. rename user name in `/etc/shadow`, `/etc/group/`, `/etc/passwd`
2. move user home directory

   ```bash
   mv /home/old /home/new
   ```

3. reboot

### Cursor control

- `alt+d`: 删除当前光标到临近右边单词开始(delete)
- `ctrl+w`: 删除当前光标到临近左边单词结束(word)
- `ctrl+h`: 删除光标前一个字符（相当于 backspace）
- `ctrl+d`: 删除光标后一个字符（相当于 delete）
- `ctrl+u`: 删除光标左边所有
- `ctrl+k`: 删除光标右边所有
