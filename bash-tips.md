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
