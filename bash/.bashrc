GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUPSTREAM="auto"

source ~/.git-prompt.sh
source ~/git-completion.bash

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -G'

HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

CDPATH='.:..:../..:~:~/GitHub'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

PS1="\n💻 :\h 👤 :\u 📂 :\$PWD\$(__git_ps1 \"\n🐙 :%s\")\n💬  "

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi
