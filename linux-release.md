---
title: Linux release
category: Linux
layout: 2017/sheet
updated: 2020-07-26
---

## Basic

{: .-two-column}

### Debian

Ref: <https://www.debian.org/releases/index.html>

| 版本号 |                  代号                  |
| :----: | :------------------------------------: |
|   11   | bullseye(no release date has been set) |
|   10   |    buster (current stable release)     |
|   9    |      stretch (oldstable release)       |
|   8    |     jessie (oldoldstable release)      |
|   7    |    wheezy (obsolete stable release)    |
|   6    |    squeeze(obsolete stable release)    |

### Ubuntu

Ref: <https://wiki.ubuntu.com/Releases>

|      版本号      |       代号        |
| :--------------: | :---------------: |
|   Ubuntu 19.10   |    Eoan Ermine    |
| ~~Ubuntu 19.04~~ |    Disco Dingo    |
| ~~Ubuntu 18.10~~ | Cosmic Cuttlefish |
| Ubuntu 18.04 LTS |   Bionic Beaver   |
| ~~Ubuntu 17.10~~ |  Artful Aardvark  |
| ~~Ubuntu 17.04~~ |    Zesty Zapus    |
| ~~Ubuntu 16.10~~ |    Yakkety Yak    |
| Ubuntu 16.04 LTS |   Xenial Xerus    |
| Ubuntu 14.04 LTS |    Trusty Tahr    |

## script

```bash
function release-note() {
    local os=${1:-debian}  # debian/ubuntu
    local version=${2:-10} # debian/ubuntu
    case ${os} in
    debian)
        case ${version} in
        10)
            echo "buster (current stable release)"
            ;;
        9)
            echo "stretch (oldstable release)"
            ;;
        8)
            echo "jessie (oldoldstable release)"
            ;;
        7)
            echo "wheezy (obsolete stable release)"
            ;;
        esac
        ;;
    ubuntu)
        case ${version} in
        19.04)
            echo "Disco Dingo"
            ;;
        18.04)
            echo "Bionic Beaver"
            ;;
        16.04)
            echo "Xenial Xerus"
            ;;
        14.04)
            echo "Trusty Tahr"
            ;;
        esac
        ;;
    esac
}
```
