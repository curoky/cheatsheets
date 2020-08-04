---
title: OS X - dns
layout: 2017/sheet
category: macOS
updated: 2020-08-04
---


### OS X 12 (Sierra) and later

```bash
sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache
```

### OS X 11 (El Capitan) and OS X 12 (Sierra)

```bash
sudo killall -HUP mDNSResponder
```

### Versions 10.10.4+

```bash
#sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder
```

### Versions 10.10.1, 10.10.2, 10.10.3

```bash
sudo discoveryutil udnsflushcaches
```

### OS X 10.9 (Mavericks)

```bash
dscacheutil -flushcache; sudo killall -HUP mDNSResponder
```

### OS X 10.7 (Lion) and 10.8 (Mountain Lion)

```bash
sudo killall -HUP mDNSResponder
```

### OS X 10.5 (Leopard) and 10.6 (Snow Leopard)

```bash
dscacheutil -flushcache
```

### OS X 10.4 (Tiger)

```bash
lookupd -flushcache
```
