#!/usr/bin/env sh

set -e

repo="git://github.com/tonyseek/oh-my-zsh-seeker-theme.git"
target="$HOME/.oh-my-zsh/custom/themes/seeker"

mkdir -p `dirname $target`

if [ -d "$target" ]; then
    if [ -d "$target/.git" ]; then
        (cd $target && git pull --ff-only origin master)
    fi
else
    git clone $repo $target
fi
