#!/usr/bin/env bash
set -xeuo pipefail

# git remote add upstream https://github.com/rstacruz/cheatsheets

git fetch upstream
git rebase upstream/master && git push origin master --force || git rebase --abort
