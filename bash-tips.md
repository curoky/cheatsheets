---
title: Bash tips
category: CLI
layout: 2017/sheet
updated: 2020-07-28
keywords:
  - Variables
  - Functions
  - Interpolation
  - Brace expansions
  - Loops
  - Conditional execution
  - Command substitution
---

### Get arguments with flags

Ref: <https://stackoverflow.com/questions/7069682/how-to-get-arguments-with-flags-in-bash>

### Remove path from environment PATH

Ref: <https://stackoverflow.com/questions/370047/what-is-the-most-elegant-way-to-remove-a-path-from-the-path-variable-in-bash>

remove special path

```bash
function PATH_REMOVE() {
  local DIR=$1
  export PATH=$(echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$DIR'"' | sed 's/:$//')
}
```

remove the path containing the string

```bash
function PATH_REMOVE_CONTAIN() {
  local DIR=$1
  export PATH=$(echo ${PATH} | awk -v RS=: -v ORS=: '/'$DIR'/ {next} {print}' | sed 's/:*$//')
}
```

### replace ~ with \$HOME in string

work for bash/zsh

```bash
${PWD/#$HOME/\~}
```

only work for bash

```bash
$(cd $HOME/Desktop && dirs +0)
```

only work for zsh, very trick

```zsh
$(cd $HOME/Desktop && dirs | awk '{print $1}')
```

### Get absolute path

in shell

```bash
alias filepath="python -c 'import os,sys;print os.path.realpath(sys.argv[1])'"

filepath() { for f in "$@"; do echo ${f}(:A); done }

filepath() { echo "$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")" }
```

in script

```bash
base_dir=$(cd "$(dirname "$0")";pwd)
```

### Copy specific file and keep the folder structure

Ref:

- <https://unix.stackexchange.com/questions/83593/copy-specific-file-type-keeping-the-folder-structure>
- <https://stackoverflow.com/questions/26259408/rsync-copy-only-specific-files-from-specific-subfolders-without-creating-empty>

Solution 1: use find with cp

```bash
find . -name '*.csv' -exec cp --parents \{\} /target \;
```

Solution 2: use rsync

```bash
rsync -avz --prune-empty-dirs --include '*/' --include '*/*/*.csv' --exclude '*' source/ target/
```

### Check the Existence of a Command

Ref: <https://www.topbug.net/blog/2016/10/11/speed-test-check-the-existence-of-a-command-in-bash-and-zsh/>

- `type foobar &> /dev/null`
- `hash foobar &> /dev/null`
- `command -v foobar &> /dev/null`
- `which foobar &> /dev/null`
- `(( $+commands[foobar] ))` (zsh only)

## Dot

### Basic usage

Ref: <https://www.linux.com/tutorials/linux-tools-meaning-dot/>

```bash
echo {1..10}
#:-> 1 2 3 4 5 6 7 8 9 10

echo {1..10..2}
#:-> 1 3 5 7 9

echo {10..1..2}
#:-> 10 8 6 4 2

echo {000..121..2}
#:-> 000 002 004 006 ... 050 052 054 ... 116 118 120

echo {a..z}
#:-> a b c d e f g h i j k l m n o p q r s t u v w x y z

echo {a..z}{a..z}
#:-> aa ab ac ad ae af ... zt zu zv zw zx zy zz

# not working with zsh
echo {z..a..2}
#:-> z x v t r p n l j h f d b

echo {one,two,three,four,five}_dog
#:-> one_dog two_dog three_dog four_dog five_dog
```

### example

```bash
mkdir {2009..2019}_Invoices
rm frame_{043..61..3}
touch {blahg,splurg,mmmf}_file.txt
```

## Curly Braces

Ref: <https://www.linux.com/tutorials/all-about-curly-braces-bash/>

### merge output

```bash
echo "hello" ; echo "world" > foo.txt
# only `world` in foo.txt

{echo "hello" ; echo "world"} > foo.txt
# `helloworld` in foo.txt
```
