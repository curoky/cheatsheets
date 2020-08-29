---
title: Git tips
category: Git
layout: 2017/sheet
updated: 2020-07-26
intro: Some tips in git.
---

### Merge two repos

Ref: <https://stackoverflow.com/questions/1425892/how-do-you-merge-two-git-repositories/10548919#10548919>

```bash
cd path/to/project-b
git remote add project-a path/to/project-a
git fetch project-a --tags
git merge --allow-unrelated-histories project-a/master # or whichever branch you want to merge
git remote remove project-a
```

### Get default branch

Cloned repo

```bash
git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'
```

Not cloned repo

```bash
git ls-remote --symref https://github.com/jemalloc/jemalloc HEAD
```

### Specify the commit date

Use absolute time

```bash
git commit --date="May 7 9:05:20 2016 +0800" -m "commit"
```

Use relative time

```bash
# after 6 hours
git commit --date="$(date -d "+6 hour" -R)" -m "commit"
```

### Change commit date

```bash
git filter-branch --env-filter \
    '
    if [ $GIT_COMMIT = a30999f3b093ac0ff06e892cd691546065953fcb ]
     then
         export GIT_AUTHOR_DATE="Sat Dec 7 01:12:23 2019 +0800"
         export GIT_COMMITTER_DATE="Sat Dec 7 01:12:23 2019 +0800"
    fi
    ' --force
```

### Keep empty directory

Method 1: Create a empty file which named `.gitkeep`.

Method 2: Create a `.gitignore` file to subdirectory, and add follow lines.

```gitignore
*
!.gitignore
```

### Global gitignore

Ref: https://help.github.com/en/github/using-git/ignoring-files#create-a-global-gitignore

create file `~/.gitignore_global`, add [this content](https://gist.github.com/octocat/9257657).

add then

```bash
git config --global core.excludesfile ~/.gitignore_global
```

### Configuring a remote for a fork

Ref: <https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/configuring-a-remote-for-a-fork>
Ref: <https://gist.github.com/ravibhure/a7e0918ff4937c9ea1c456698dcd58aa>

```bash
git remote add upstream https://github.com/name/repo.git
git fetch upstream
git rebase upstream/master
```

### Auto sync for a fork

- <https://github.com/probot/ideas/issues/26>
- <https://github.com/wei/pull#readme>
- <https://stackoverflow.com/questions/23793062/can-forks-be-synced-automatically-in-github>

## Managing remote repositories

Ref: <https://help.github.com/en/github/using-git/changing-a-remotes-url>

### Adding a remote

```bash
git remote add origin https://github.com/user/repo.git

git remote -v
```

### Changing a remote's URL

```bash
git remote set-url origin https://github.com/USERNAME/REPOSITORY.git
```

### Renaming a remote

```bash
git remote rename origin destination
```

### Removing a remote

```bash
git remote rm destination
```

### Commit with special date

```bash
gcmsg "init" --date="2020-00-00 00:00:00 +0800"
```
