---
title: Disk info
category: CLI
layout: 2017/sheet
updated: 2020-07-29
---

### iotop(with root)

```bash
sudo iotop -o -d 1
```

选项：

- -o：只显示有 io 操作的进程
- -b：批量显示，无交互，主要用作记录到文件。
- -n NUM：显示 NUM 次，主要用于非交互式模式。
- -d SEC：间隔 SEC 秒显示一次。
- -p PID：监控的进程 pid。
- -u USER：监控的进程用户。

常用快捷键：

- 左右箭头：改变排序方式，默认是按 IO 排序。
- r：改变排序顺序。
- o：只显示有 IO 输出的进程。
- p：进程 / 线程的显示方式的切换。
- a：显示累积使用量。
- q：退出。

### iostat(without root)

```bash
# 每隔一秒显示100次
iostat -md 1 100
```

命令参数：

- -C 显示 CPU 使用情况
- -d 显示磁盘使用情况
- -k 以 KB 为单位显示
- -m 以 M 为单位显示
- -N 显示磁盘阵列 (LVM) 信息
- -n 显示 NFS 使用情况
- -p [磁盘] 显示磁盘和分区的情况
- -t 显示终端和 CPU 的信息
- -x 显示详细信息
- -V 显示版本信息
