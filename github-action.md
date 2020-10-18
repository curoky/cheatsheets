---
title: Github Action
category: Github
layout: 2017/sheet
updated: 2020-10-17
intro: Some tips in github action.
---

### Add ssh to runner

```yaml
jobs:
  build:
    steps:
      - name: Decode ssh key
        env:
          PRI_SSH_KEY: ${{ secrets.PRI_SSH_KEY }}
          PUB_SSH_KEY: ${{ secrets.PUB_SSH_KEY }}
        run: |
          sudo apt update
          sudo apt install -y ssh
          mkdir -p ssh
          echo "$PRI_SSH_KEY" > ssh/id_rsa
          echo "$PUB_SSH_KEY" > ssh/id_rsa.pub
          ssh-keyscan github.com > ssh/known_hosts
          chmod 600 ssh/id_rsa
          chmod 600 ssh/id_rsa.pub
```

### Add date tags

```yaml
jobs:
  build:
    steps:
    	- name: Get day of week tag
        id: get_tag
        run: echo "RELEASE_VERSION=$(date +%A)" >> $GITHUB_ENV

```

### Debug runner

```yaml
jobs:
  build:
    steps:
			- uses: mxschmitt/action-tmate@v2
```

### Cleanup disk

```yaml
jobs:
  build:
    steps:
      - name: Cleanup Disk
        uses: curoky/cleanup-disk-action@master
```
