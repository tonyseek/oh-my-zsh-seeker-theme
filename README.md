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

The quickly way:

    curl -L https://raw.github.com/tonyseek/oh-my-zsh-seeker-theme/master/install.sh | sh

Or:

    wget https://raw.github.com/tonyseek/oh-my-zsh-seeker-theme/master/install.sh -O - | sh

Or you can cloning and creating a symbol link by yourself:

    mkdir -p $HOME/.oh-my-zsh/custom/themes
    cd $HOME/.oh-my-zsh/custom/themes
    git clone git://github.com/tonyseek/oh-my-zsh-seeker-theme.git seeker

And edit your `.zshrc`.

    ZSH_THEME=seeker

It's easy to upgrade this theme with git:

    cd $HOME/.oh-my-zsh/custom/themes/seeker
    git pull --ff-only origin master


Screenshot
==========

![preview of the seeker theme](https://raw.github.com/tonyseek/oh-my-zsh-seeker-theme/gh-assets/preview.png)


[ys]: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes#ys
