#!/usr/bin/env sh

set -e

repo="https://github.com/tonyseek/oh-my-zsh-seeker-theme.git"
target="$ZSH_CUSTOM/themes/seeker"

mkdir -p `dirname $target`

if [ -d "$target" ]; then
    if [ -d "$target/.git" ]; then
        (cd $target && git pull --ff-only origin master)
    fi
else
    git clone $repo $target
fi

ln -sf $target/*.zsh-theme $ZSH_CUSTOM/themes
