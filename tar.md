---
title: tar
category: CLI
layout: 2017/sheet
updated: 2020-07-29
---

### 参数

- -c 建立新的压缩文件
- -r 添加文件到已经压缩的文件
- -u 添加改变了和现有的文件到已经存在的压缩文件
- -x 从压缩的文件中提取文件
- -t 显示压缩文件的内容
- -z 支持 gzip 解压文件
- -j 支持 bzip2 解压文件
- -v 显示操作过程
- -k 保留源有文件不覆盖
- -C 切换到指定目录
- -f 指定压缩文件
- --delete 删除包中文件
- --strip-components 去除目录
- --add-file 向包中添加文件

### 后缀与命令

|            | compress                           | extract   |
| ---------- | ---------------------------------- | --------- |
| tar        | tar -cvf test.tar file1 file2      | tar -xvf  |
| tar.gz/tgz | tar -czvf test.tar.gz file1 file2  | tar -xzvf |
| tar.xz     | tar -cJvf test.tar.xz file1 file2  | tar -xJvf |
| tar.bz2    | tar -cjvf test.tar.bz2 file1 file2 | tar -xjvf |
| tar.Z      | tar -cZvf test.tar.Z file1 file2   | tar -xZvf |

## Tips
{: .-one-column}

### From pip

Ref: <https://www.howtogeek.com/howto/uncategorized/linux-quicktip-downloading-and-un-tarring-in-one-step/>

Ref: <https://unix.stackexchange.com/questions/85194/how-to-download-an-archive-and-extract-it-without-saving-the-archive-to-disk>

```bash
curl -L your_link_here   | tar xvz -
wget -qO- your_link_here | tar xvz -
wget -qO- your_link_here | tar xvz - -C /target/directory
wget -qO- your_link_here | tar xvz - -C /target/directory --strip-components 1
```
