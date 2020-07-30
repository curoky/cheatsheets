---
title: Rsync
category: CLI
layout: 2017/sheet
weight: -1
---

### Args

| 参数选项              |                                                                                         说明 |
| --------------------- | -------------------------------------------------------------------------------------------: |
| -v，--verbose         |                                                                               详细模式输出。 |
| -q，--quiet           |                                                                               精简输出模式。 |
| -c，--checksum        |                                                       打开校验开关，强制对文件传输进行校验。 |
| -a，--archive         |                        归档模式，表示以递归方式传输文件，并保持所有文件属性，等于 -rlptgoD。 |
| -r，--recursive       |                                                                     对子目录以递归模式处理。 |
| -R，--relative        |                                                                           使用相对路径信息。 |
| -b，--backup          |                                 创建备份，有同样的文件名时，将老的文件重新命名为 ~filename。 |
| --backup-dir          |                                                   将备份文件（如 ~filename）存放在在目录下。 |
| -suffix=SUFFIX        |                                                                           定义备份文件前缀。 |
| -u，--update          | 仅仅进行更新，也就是跳过所有已经存在于 DST，并且文件时间晚于要备份的文件，不覆盖更新的文件。 |
| -l，--links           |                                                                                 保留软链结。 |
| -L，--copy-links      |                                                               像对待常规文件一样处理软链结。 |
| --copy-unsafe-links   |                                                      仅仅拷贝指向 SRC 路径目录树以外的链结。 |
| --safe-links          |                                                          忽略指向 SRC 路径目录树以外的链结。 |
| -H，--hard-links      |                                                                                 保留硬链结。 |
| -p，--perms           |                                                                               保持文件权限。 |
| -o，--owner           |                                                                           保持文件属主信息。 |
| -g，--group           |                                                                           保持文件属组信息。 |
| -D，--devices         |                                                                           保持设备文件信息。 |
| -t，--times           |                                                                           保持文件时间信息。 |
| -S，--sparse          |                                                    对稀疏文件进行特殊处理以节省 DST 的空间。 |
| -n，--dry-run         |                                                                       现实哪些文件将被传输。 |
| -w，--whole-file      |                                                                   拷贝文件，不进行增量检测。 |
| -x，--one-file-system |                                                                       不要跨越文件系统边界。 |
| -B，--block-size=SIZE |                                                      检验算法使用的块尺寸，默认是 700 字节。 |
| -e，--rsh=command     |                                                         指定使用 rsh、ssh 方式进行数据同步。 |
| --rsync-path=PATH     |                                                  指定远程服务器上的 rsync 命令所在路径信息。 |
| -C，--cvs-exclude     |                            使用和 CVS 一样的方法自动忽略文件，用来排除那些不希望传输的文件。 |
| --existing            |                                仅仅更新那些已经存在于 DST 的文件，而不备份那些新创建的文件。 |
| --delete              |                                                             删除那些 DST 中 SRC 没有的文件。 |
| --delete-excluded     |                                                   同样删除接收端那些被该选项指定排除的文件。 |
| --delete-after        |                                                                         传输结束以后再删除。 |
| --ignore-errors       |                                                                 及时出现 IO 错误也进行删除。 |
| --max-delete=NUM      |                                                                        最多删除 NUM 个文件。 |
| --partial             |                                     保留那些因故没有完全传输的文件，以是加快随后的再次传输。 |
| --partial-dir=DIR     |                                                                     中间临时文件放置的目录。 |
| --force               |                                                                   强制删除目录，即使不为空。 |
| --numeric-ids         |                                                   不将数字的用户和组 id 匹配为用户名和组名。 |
| -I，--ignore-times    |                                                         不跳过那些有同样的时间和长度的文件。 |
| --size-only           |                                   当决定是否要备份文件时，仅仅察看文件大小而不考虑文件时间。 |
| --modify-window=NUM   |                                           决定文件是否时间相同时使用的时间戳窗口，默认为 0。 |
| -T --temp-dir=DIR     |                                                                      在 DIR 中创建临时文件。 |
| --compare-dest=DIR    |                                                    同样比较 DIR 中的文件来决定是否需要备份。 |
| -P                    |                                                                           等同于 --partial。 |
| --progress            |                                                                               显示传输进度。 |
| -z，--compress        |                                                           对备份的文件在传输时进行压缩处理。 |
| --exclude=PATTERN     |                                                               指定排除不需要传输的文件模式。 |
| --include=PATTERN     |                                                             指定不排除而需要传输的文件模式。 |
| --exclude-from=FILE   |                                                                 排除 FILE 中指定模式的文件。 |
| --include-from=FILE   |                                                             不排除 FILE 指定模式匹配的文件。 |
| --address             |                                                                           绑定到特定的地址。 |
| --config=FILE         |                                          指定其他的配置文件，不使用默认的 rsyncd.conf 文件。 |
| --port=PORT           |                                                                  指定其他的 rsync 服务端口。 |
| --blocking-io         |                                                                   对远程 shell 使用阻塞 IO。 |
| -stats                |                                                                     给出某些文件的传输状态。 |

### Basic example

{: .-prime}

```bash
# syncing folder src into dest:
rsync -avz ./src /dest
# syncing the content of src into dest:
rsync -avz ./src/ /dest
```

### OSX

```bash
--exclude '.Trashes'
--exclude '.Spotlight-V100'
--exclude '.fseventsd'
```

### Transfer options

```bash
-z, --compress
-n, --dry-run
    --partial   # allows resuming of aborted syncs
    --bwlimit=RATE    # limit socket I/O bandwidth
```

### Display options

```bash
-q, --quiet
-v, --verbose
    --stats
-h, --human-readable
    --progress
-P                     # same as --partial --progress
```

### Skipping options

```bash
-u, --update     # skip files newer on dest
-c, --checksum   # skip based on checksum, not mod-time & size
```

### Backup options

```bash
-b, --backup           # backup with suffix
    --suffix=SUFFIX    # default ~ without --backup-dir
    --backup-dir=DIR
```

### Include options

```bash
--exclude=PATTERN
--include=PATTERN
```

```bash
--exclude-from=FILE
--include-from=FILE
--files-from=FILE    # read list of filenames from FILE
```

```bash
-C, --cvs-exclude    # exclude from local/global .cvsignore
```

### Archive options

```bash
-a, --archive    # archive (-rlptgoD)
```

```bash
-r, --recursive
-l, --links      # copy symlinks as links
-p, --perms      # preserve permissions
-t, --times      # preserve times
-g, --group      # preserve group
-o, --owner      # preserve owner
-D               # --devices --specials
```

```bash
--delete         # Delete extra files
```
