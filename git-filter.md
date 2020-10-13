---
title: Git filter
category: Git
layout: 2017/sheet
updated: 2020-08-13
---

### make commit date = auther date

Ref: <https://stackoverflow.com/questions/28536980/git-change-commit-date-to-author-date>

```bash
git filter-branch --env-filter 'export GIT_COMMITTER_DATE="$GIT_AUTHOR_DATE"' -f
```

### make history all back 90 days

```bash
git filter-branch --env-filter '
old_time=$(date -d "$(echo ${GIT_AUTHOR_DATE%% *})" --rfc-3339=seconds)
new_time=$(date -d "$old_time -70 day" --rfc-3339=seconds)
export GIT_AUTHOR_DATE="$new_time"
export GIT_COMMITTER_DATE="$new_time"
' -f
```

### make some history back to 1 day

```bash
git filter-branch --env-filter '
old_time=$(date -d "$(echo ${GIT_AUTHOR_DATE%% *})" --rfc-3339=seconds)
new_time=$(date -d "$old_time -1 day" --rfc-3339=seconds)
day=$(date -d "$old_time" '+%d')
if [ "${day}" = "23" ] ; then
  export GIT_AUTHOR_DATE="$new_time"
  export GIT_COMMITTER_DATE="$new_time"
fi
' -f
```

## log with all time

```bash
git log --format=fuller
```
