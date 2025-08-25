export BAT_CONFIG_PATH="$HOME/.bat.conf"
export SSL_CERT_FILE="$HOME/cacert.pem"
export PATH="$PATH:/Users/gschenz/.local/bin"
export MANPAGER='nvim +Man!'

export FZF_DEFAULT_COMMAND='fd --hidden --strip-cwd-prefix --exclude .git --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code --wait'
fi
