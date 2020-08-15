---
title: Git filter
category: Git
layout: 2017/sheet
updated: 2020-08-13
---

### make commit date = auther date

```bash
git filter-branch --env-filter 'export GIT_COMMITTER_DATE="$GIT_AUTHOR_DATE"' -f
```

### make history all back 90 days

```bash
git filter-branch --env-filter '
commit_time=$(date -d"$(echo ${GIT_AUTHOR_DATE%% *})" --rfc-3339=seconds)
commit_time=$(date -d "$commit_time -70 day" --rfc-3339=seconds)
export GIT_AUTHOR_DATE="$commit_time"
export GIT_COMMITTER_DATE="$commit_time"
' -f
```

## log with all time

```bash
git log --format=fuller
```
