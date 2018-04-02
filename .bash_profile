# handy cd aliases
alias ..='cd ..'

# alias vi as vim
alias vi=vim

# alias git as hub
alias git=hub

# showing/hidding hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# clearing bash history
alias clearHistory='history -c && rm -f ~/.bash_history'

# connect to raspberrypi
#alias accessPi='ssh pi@192.168.0.195'

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

