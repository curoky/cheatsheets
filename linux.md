---
title: Linux
---

### Mounting a RAM drive

    $ mount -t tmpfs -o size=5G,nr_inodes=5k,mode=700 tmpfs /tmp

### Visudo

    sudo visudo

    username ALL=(ALL) NOPASSWD:/sbin/restart whatever

### Display the amount of available disk space

```sh
df
df -h   # human-readable format
df -a   # all filesystems
```

### Display disk usage

```sh
du
du -hsx * | sort -rh | head -10    # largest 10 folders
```

### Answer yes in a bash script

```bash
yes | /your/command
```

### Run multiple programs in parallel from a bash script?

Ref: <https://stackoverflow.com/questions/3004811/how-do-you-run-multiple-programs-in-parallel-from-a-bash-script>

Method1

```bash
some_command &
P1=$!
other_command &
P2=$!
wait $P1 $P2
```

Method2

```bash
(echo prog1; echo prog2) | parallel
# or
parallel ::: prog1 prog2
```
