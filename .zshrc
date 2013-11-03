# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
PROMPT_SUBST=0
PROMPT_PERCENT=0

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git python vagrant virtualenvwrapper)

# VIM-style shell
export EDITOR="vim"
bindkey -v 
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

# `cd` by just typing dir name
setopt AUTO_CD

export PATH=/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
unsetopt correct_all
alias rake='noglob rake'
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

if [ -d /usr/local/go ]; then
    export PATH=/usr/local/go/bin:$PATH
    source /usr/local/go/misc/zsh/go
fi

export GOPATH=/Users/mclarke/Code/go
export PATH=$GOPATH/bin:$PATH

# Python
export PYTHONDONTWRITEBYTECODE=1
