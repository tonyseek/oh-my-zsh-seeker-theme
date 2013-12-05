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

You can install this plugin by cloning and creating a symbol link:

    repo="git://github.com/tonyseek/oh-my-zsh-seeker-theme.git"
    target="$HOME/.oh-my-zsh-themes/seeker"

    git clone $repo $target
    ln -s $target/seeker.zsh-theme $HOME/.oh-my-zsh/themes/seeker.zsh-theme

And edit your `.zshrc`.

    ZSH_THEME=seeker

It's easy to upgrade this theme with git:

    cd $HOME/.oh-my-zsh-themes/seeker
    git pull origin master
    cd -


Preview
=======

![preview of the seeker theme](https://raw.github.com/tonyseek/oh-my-zsh-seeker-theme/gh-assets/preview.png)


[ys]: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes#ys
