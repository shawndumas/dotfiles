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

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUPSTREAM="auto"

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -G'
alias fn='find . -name'
alias tmux="TERM=screen-256color-bce tmux"

HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

if [[ $(type -P grunt) ]]; then
   eval "$(grunt --completion=bash)"
fi

if which brew >/dev/null 2>&1; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

  if [ -f `brew --prefix`/Library/Contributions/brew_bash_completion.sh ]; then
    . `brew --prefix`/Library/Contributions/brew_bash_completion.sh
  fi
else
  source /etc/bash_completion.d/git
fi

PS1="\n💻 :\h 👤 :\u 📂 :\$PWD\$(__git_ps1 \"\n🐙 :%s\")\n💬  "

source ~/.git-prompt.sh
