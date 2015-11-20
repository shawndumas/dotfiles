#!/usr/bin/env sh

shopt -s autocd
shopt -s cdspell
shopt -s checkjobs
shopt -s checkwinsize
shopt -s dirspell
shopt -s globstar
shopt -s nocaseglob

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -G'
alias fn='find . -name'
alias tmux='TERM=screen-256color-bce tmux'
alias be='bundle exec'

# the time has come...
alias vim='nvim'

export HISTCONTROL=ignoredups:erasedups
shopt -s histappend

# Eternal bash history.
# ---------------------

# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "

# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history

# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export PATH=~/homebrew/bin:$PATH

if which brew >/dev/null 2>&1; then
  if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    . "$(brew --prefix)/etc/bash_completion"
  fi

  if [ -f "$(brew --prefix)/Library/Contributions/brew_bash_completion.sh" ]; then
    . "$(brew --prefix)/Library/Contributions/brew_bash_completion.sh"
  fi
else
  . /etc/bash_completion.d/git
fi

. ~/.shell_prompt.sh
. ~/.git-prompt.sh

export NVM_DIR="/Users/shawndumas/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use 0.12.7
export PATH=$PATH:$HOME/Stash/wulfcli/src/bin

export PATH="$PATH:$HOME/.rvm/bin"
