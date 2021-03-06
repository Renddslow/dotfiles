#!/bin/bash

# where everything lives
export DEVELOPMENT=$HOME/repos
export DOTFILES=$DEVELOPMENT/dotfiles

# bring on the scripts
source $DOTFILES/script/colors.sh
source $DOTFILES/script/git-completion.sh
source $DOTFILES/script/npm-publish.sh

# import the private bits
source $DOTFILES/secrets.sh

# anything to add to the path
export LOCAL_BIN="/usr/local/bin"
export MONGODB_BIN_PATH=$DEVELOPMENT/mongodb/bin
export NGROK_BIN_PATH=$DEVELOPMENT/ngrok

export PATH=$LOCAL_BIN:$MONGODB_BIN_PATH:$NGROK_BIN_PATH:$PATH

# installed apps
alias redis=$DEVELOPMENT/redis/src/redis-server
alias redis-cli=$DEVELOPMENT/redis/src/redis-cli

# app shortcuts
alias qrcode=qrcode-terminal # create qrcode from given text
alias nr=npm-run # run with npm scoped environment
alias og=gh-home # open current folder in github if possible
alias on=npm-home # open current folder in npm if possible
alias stree="open -a SourceTree ." # open SourceTree in current folder
alias sublime="open -a 'Sublime Text.app'" # open a file in sublime text editor

# useful commands
alias showhidden="defaults write com.apple.finder AppleShowAllFiles YES; killall -KILL Finder" # show hidden files
alias reload="source ~/.profile" # reload this file
alias dnsflush="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo dns flushed" # flush dns cache
alias gitclean="git remote prune" # clean removed branches, use like `gitclean origin` or `gitclean origin --dry-run` for a safer

# disable homebrew analytics because I am paranoid
export HOMEBREW_NO_ANALYTICS=1

# terminal colors
export PS1="\n$C_LIGHTGREEN\u $C_LIGHTGRAY@ $C_LIGHTGREEN\h $C_LIGHTGRAY: $C_LIGHTYELLOW\w $C_LIGHTCYAN"'$(__git_ps1 " (%s)")'"\n$C_LIGHTGRAY\$ $C_DEFAULT "

# load node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
