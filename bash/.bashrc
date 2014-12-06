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
alias tmux='TERM=screen-256color-bce tmux'

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

if [[ $(type -P grunt) ]]; then
   eval "$(grunt --completion=bash)"
fi

if which brew >/dev/null 2>&1; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
    . `brew --prefix`/etc/t-completion.sh
  fi

  if [ -f `brew --prefix`/Library/Contributions/brew_bash_completion.sh ]; then
    . `brew --prefix`/Library/Contributions/brew_bash_completion.sh
  fi

  eval "$(rbenv init -)"
else
  source /etc/bash_completion.d/git
fi

source ~/.shell_prompt.sh
source ~/.git-prompt.sh

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_65.jdk/Contents/Home

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
