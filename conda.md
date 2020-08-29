---
title: conda
category: CLI
layout: 2017/sheet
updated: 2020-07-25
---

### Mirror

```bash
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
conda config --set show_channel_urls yes
```

### Proxy

```bash
# set proxy
# https://stackoverflow.com/questions/31099279/running-conda-with-proxy
# https://docs.conda.io/projects/conda/en/latest/user-guide/configuration/use-condarc.html#configure-conda-for-use-behind-a-proxy-server-proxy-servers
# HTTP_PROXY and HTTPS_PROXY env also available
conda config --set proxy_servers.http ${_HTTP_PROXY}
conda config --set proxy_servers.https ${_HTTP_PROXY}

# unset proxy
conda config --remove-key proxy_servers
```
