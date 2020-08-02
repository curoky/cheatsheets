---
title: zsh
category: CLI
layout: 2017/sheet
---

### Expressions

| Expression        | Example             | Description                             |
| ----------------- | ------------------- | --------------------------------------- |
| `!!`              | `sudo !!`           | Last command (`sudo !!`)                |
| ---               | ---                 | ---                                     |
| `!*`              | `vim !*`            | Last command's parameters (`vim !*`)    |
| `!^`              |                     | Last command's first parameter          |
| `!$`              |                     | Last command's last parameter           |
| ---               | ---                 | ---                                     |
| `!?ls` `<tab>`    | `sudo !?mv` `<tab>` | Command and params of last `ls` command |
| `!?ls?:*` `<tab>` |                     | Params of last `ls` command             |
| ---               | ---                 | ---                                     |
| `*(m0)`           | `rm *(m0)`          | Last modified today                     |
| `*(m-4)`          |                     | Last modified <4 days ago               |

{: .-headers}

### Change default shell

```bash
chsh -s `which zsh`
```

### Process Substitution

| Expression   | Example                                       | Description                                                             |
| ------------ | --------------------------------------------- | ----------------------------------------------------------------------- |
| `<(COMMAND)` | `grep "needle" <(curl "https://haystack.io")` | Replace argument with _named pipe/FIFO_ (read-only) with command output |
| `=(COMMAND)` | `vim =(curl "https://haystack.io")`           | Replace argument with _file_ (writable) containing command output       |

{: .-headers}

## Dictionaries

{: .-three-column}

### Defining

```bash
# declare is equal to typeset
typeset -A assoc_array
assoc_array=(k1 v1 k2 v2 k3 v3)
assoc_array[k4]=v4
```

### Iteration

Ref: <https://superuser.com/questions/737350/iterating-over-keys-or-k-v-pairs-in-zsh-associative-array>

iterating method 1

```bash
for k in "${(@k)assoc_array}"; do
  echo "$k -> $assoc_array[$k]"
done
```

iterating method 2

```bash
for key val in ${(kv)assoc_array}; do
    echo "$key -> $val"
done
```

## Also see

- [Bash cheatsheet](./bash)

Zsh is mostly compatible with Bash, so most everything in Bash's cheatsheet also applies.
