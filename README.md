oh-my-zsh::theme::seeker
========================

This is my favored oh-my-zsh theme which forked by the official theme
`robbyrussell` and `gnzh`.

This theme uses many special unicode characters to be fancy, but it may cause
some problems without well supported fonts. If you hope to find a theme more
simple (such as using ascii-only prompt in a remote server), I recommend
the [ys][].


Installation
------------

I recommend to use [antigen][] for installing this theme:

    # $HOME/.zshrc
    source /usr/local/share/antigen.zsh

    antigen use oh-my-zsh
    antigen theme tonyseek/oh-my-zsh-seeker-theme seeker
    antigen apply

It's easy to upgrade this theme with git:

    cd $HOME/.oh-my-zsh/custom/themes/seeker
    git pull --ff-only origin master


Screenshot
==========

![preview of the seeker theme](https://raw.github.com/tonyseek/oh-my-zsh-seeker-theme/gh-assets/preview.png)


[ys]: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes#ys
[antigen]: https://github.com/zsh-users/antigen
