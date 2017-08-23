#!/usr/bin/env sh

shopt -s autocd
shopt -s cdspell
shopt -s checkjobs
shopt -s checkwinsize
shopt -s dirspell
shopt -s globstar
shopt -s nocaseglob
shopt -s histappend

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

alias t='git '
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -G'
alias fn='find . -name'
alias vim='nvim'

export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export HOMEBREW_GITHUB_API_TOKEN="16af22536b6402d71d794e65ed1ed2a240284846"

export PATH=${HOME}/homebrew/bin:${PATH}
[ -f ${HOME}/homebrew/etc/bash_completion ] && . ${HOME}/homebrew/etc/bash_completion

. ~/.shell_prompt.sh
. ~/.git-prompt.sh

export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use 6.7.0
