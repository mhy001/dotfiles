# handy cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias vi=vim
alias git=hub
alias bat='bat --show-all'

# clearing bash history
alias clearHistory='history -c && rm -f ~/.bash_history'

# customize bash prompt
reset="\e[0m";
black="\e[0;30m";
blue="\033[01;34m";
cyan="\033[01;36m";
green="\033[01;32m";
purple="\033[01;35m";
red="\e[0;31m";
violet="\e[0;35m";
white="\e[0;37m";
yellow="\033[01;33m";
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\[${green}\]\u@\h \[${blue}\]\w \[${cyan}\]\$(parse_git_branch)\[${purple}\]\n$ \[${reset}\]"
export PS1

# enable color support of ls and also handy aliases
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxhxhxhxhxcxcx
alias ls='ls -GF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

