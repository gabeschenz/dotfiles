#! /usr/bin/env zsh

if /usr/bin/which -s nvim; then
	alias v=nvim
	alias vim=nvim
fi

alias ls='gls -F --group-directories-first'
alias ll='ls -l --human-readable --dereference-command-line'
alias la='ll -A'
alias ltr='ll -tr'
alias latr='la -tr'

alias config='git --git-dir=/Users/gschenz/.cfg/ --work-tree=/Users/gschenz'
alias configlg='/opt/homebrew/bin/lazygit --git-dir=/Users/gschenz/.cfg --work-tree=/Users/gschenz'
alias lg='/opt/homebrew/bin/lazygit '

