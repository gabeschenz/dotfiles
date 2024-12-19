export BAT_CONFIG_PATH="$HOME/.bat.conf"
export SSL_CERT_FILE="$HOME/cacert.pem"
export PATH="$PATH:/Users/schengx/.local/bin"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code --wait'
fi
