PYENV_PROMPT_DEFAULT_VERSION=${PYENV_PROMPT_DEFAULT_VERSION:="system"}

function _virtualenv_prompt_info {
    if [[ -n "$(whence virtualenv_prompt_info)" ]]; then
        if [ -n "$(whence pyenv_prompt_info)" ]; then
            if [ "$1" = "inline" ]; then
                ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX=%{$fg[blue]%}"::%{$fg[red]%}"
                ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX=""
                virtualenv_prompt_info
            fi
            [ "$(pyenv_prompt_info)" = "${PYENV_PROMPT_DEFAULT_VERSION}" ] && virtualenv_prompt_info
        else
            virtualenv_prompt_info
        fi
    fi
}

function _git_prompt_info {
    [[ -n $(whence git_prompt_info) ]] && git_prompt_info
}

function _hg_prompt_info {
    [[ -n $(whence hg_prompt_info) ]] && hg_prompt_info
}

function _pyenv_prompt_info {
    if [ -n "$(whence pyenv_prompt_info)" ]; then
        local _prompt_info="$(pyenv_prompt_info)"
        if [ -n "$_prompt_info" ] && [ "$_prompt_info" != "${PYENV_PROMPT_DEFAULT_VERSION}" ]; then
            echo "${ZSH_THEME_PYENV_PROMPT_PREFIX}$(pyenv_prompt_info)$(_virtualenv_prompt_info inline)${ZSH_THEME_PYENV_PROMPT_SUFFIX}"
        fi
    fi
}

function _docker_prompt_info {
    DOCKER_PROMPT_INFO="${DOCKER_PROMPT_INFO:-${DOCKER_MACHINE_NAME}}"
    DOCKER_PROMPT_INFO="${DOCKER_PROMPT_INFO:-${DOCKER_HOST/tcp:\/\//}}"
    if [ -n "${DOCKER_PROMPT_INFO}" ]; then
        echo "${ZSH_THEME_DOCKER_PROMPT_PREFIX}${DOCKER_PROMPT_INFO}${ZSH_THEME_DOCKER_PROMPT_SUFFIX}"
    fi
}

PROMPT='╭ %{$fg_bold[red]%}➜ %{$fg_bold[green]%}%n@%M:%{$fg[cyan]%}%~ %{$fg_bold[blue]%}$(_virtualenv_prompt_info)$(_pyenv_prompt_info)$(_docker_prompt_info)$(_git_prompt_info)$(_hg_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}
╰ ➤ '

ZSH_THEME_HG_PROMPT_PREFIX="hg:‹%{$fg[red]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[blue]%}› %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_HG_PROMPT_CLEAN="%{$fg[blue]%}›"

ZSH_THEME_GIT_PROMPT_PREFIX="git:‹%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}› %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}›"

ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="venv:‹%{$fg[red]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="%{$fg[blue]%}› "

ZSH_THEME_PYENV_PROMPT_PREFIX="python:‹%{$fg[red]%}"
ZSH_THEME_PYENV_PROMPT_SUFFIX="%{$fg[blue]%}› "

ZSH_THEME_DOCKER_PROMPT_PREFIX="docker:‹%{$fg[red]%}"
ZSH_THEME_DOCKER_PROMPT_SUFFIX="%{$fg[blue]%}› "
