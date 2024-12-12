#! /usr/bin/env zsh 

if /usr/bin/which -s nvim; then
	alias vim=nvim
fi

if /usr/bin/which -s gls; then 
  alias ls='gls --color=always -F --group-directories-first'
fi

alias ll='ls -l --human-readable --dereference-command-line'
alias la='ll -A'
alias ltr='ll -tr'
alias latr='la -tr'

alias config='/usr/bin/git --git-dir=/Users/schengx/.cfg/ --work-tree=/Users/schengx'
