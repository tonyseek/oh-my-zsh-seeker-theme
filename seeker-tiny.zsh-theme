function _virtualenv_prompt_info {
    [[ -n $(whence virtualenv_prompt_info) ]] && virtualenv_prompt_info
}

function _git_prompt_info {
    [[ -n $(whence git_prompt_info) ]] && git_prompt_info
}

PROMPT=' %{$fg_bold[green]%}%n@%M:%{$fg[cyan]%}%~ %{$fg_bold[blue]%}$(virtualenv_prompt_info)$(git_prompt_info)%{$fg_bold[blue]%}% 
 %{$fg_bold[red]%}$ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:<%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}> %{$fg[yellow]%}x "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}>"
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$fg_bold[blue]%}venv:<%{$fg[red]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="%{$fg[blue]%}> %{$reset_color%}"
