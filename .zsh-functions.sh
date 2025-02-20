#!/usr/bin/env bash

function clone-gist {
  set -x
  local _hash="$1"
  local gist_name="$2"

  gist_symlink_path="$HOME/repos/gist-$(echo "${gist_name}" | tr -s '[:space:]' | tr '[:upper:]' '[:lower:]' | tr ' ' '-')"
  gist_repo_path="$HOME/repos/gists/${_hash}"

  if [[ -d "${gist_repo_path}" ]]; then
    return
  fi

  mkdir -p "$HOME/repos/gists"
  git clone "git@gist.github.com:${_hash}" "${gist_repo_path}"
  ln -s "${gist_repo_path}" "${gist_symlink_path}"
}

# ripgrep->fzf->vim [QUERY]
f() (
  RELOAD='reload:rg --column --color=always --smart-case {q} || :'
  OPENER='if [[ $FZF_SELECT_COUNT -eq 0 ]]; then
            nvim {1} +{2}     # No selection. Open the current line in Vim.
          else
            nvim +cw -q {+f}  # Build quickfix list for the selected items.
          fi'
  fzf --disabled --ansi --multi \
    --bind "start:$RELOAD" --bind "change:$RELOAD" \
    --bind "enter:become:$OPENER" \
    --bind "ctrl-o:execute:$OPENER" \
    --bind 'alt-a:select-all,alt-d:deselect-all,ctrl-/:toggle-preview' \
    --delimiter : \
    --preview 'bat --style=full --color=always --highlight-line {2} {1}' \
    --preview-window '~4,+{2}+4/3,<80(up)' \
    --query "$*"
)
