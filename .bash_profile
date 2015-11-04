
##############################################################
### Git
####### Autocomplete
source ~/.git-completion.bash

####### Show branch in command line
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

##############################################################
### Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

##############################################################
### Utils
####### Alias
alias ls="ls -la"
####### Finder show hidden files
defaults write com.apple.finder AppleShowAllFiles YES
####### Command line collor & date
function show_date () {
  date "+%H:%M:%S"
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
 
PS1="$GREEN\u@\h$NO_COLOR: \$(show_date) \w$GREEN\$(parse_git_branch)$NO_COLOR\$ "


