---
title: Homebrew
layout: 2017/sheet
category: CLI
updated: 2020-07-26
---

### Overriding default gcc compiler

Ref: <https://stackoverflow.com/questions/23319838/linuxbrew-overriding-the-default-gcc-compiler-location>

```bash
brew install gcc@9
brew install vim --cc=gcc-9
```

### Use replace MacOSX utilities with GNU coreutils

Ref: https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities/69332#69332

```bash
brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep
```
