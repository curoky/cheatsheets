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

Ref: <https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities/69332#69332>

```bash
brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep
```

### Remove all

Ref: <https://darryldias.me/2016/remove-all-installed-homebrew-packages/>

```bash
brew remove --force $(brew list) --ignore-dependencies
brew cask remove --force $(brew cask list)
brew cleanup
```

## Mirror

### Git mirror

```bash
# brew
# BREW_GIT=https://mirrors.aliyun.com/homebrew/brew.git/
# BREW_GIT=https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
BREW_GIT=https://mirrors.cloud.tencent.com/homebrew/brew.git/
git -C "$(brew --repo)" remote set-url origin ${BREW_GIT}

# brew-core
# BREW_CORE_GIT=https://mirrors.aliyun.com/homebrew/homebrew-core.git
# BREW_CORE_GIT=https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
BREW_CORE_GIT=https://mirrors.cloud.tencent.com/homebrew/homebrew-core.git/
git -C "$(brew --repo homebrew/core)" remote set-url origin ${BREW_CORE_GIT}

# brew-cask
BREW_CASK_GIT=https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask.git
git -C "$(brew --repo homebrew/cask)" remote set-url origin ${BREW_CASK_GIT}
```

unset mirror

```bash
git -C "$(brew --repo)" remote set-url origin https://github.com/Homebrew/brew.git
git -C "$(brew --repo homebrew/core)" remote set-url origin https://github.com/Homebrew/homebrew-core
git -C "$(brew --repo homebrew/cask)" remote set-url origin https://github.com/Homebrew/homebrew-cask
```

### Bottles mirror

```bash
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.cloud.tencent.com/homebrew-bottles
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
```
