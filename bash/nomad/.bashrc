# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
  *) return;;
esac

# Path to kubectl completion script
source <(kubectl completion bash)

# Path to Docker completion script
source /etc/bash_completion.d/docker

# kubectl aliases
alias k='kubectl'

# Add ~/.kubectx to PATH
export PATH=~/.kubectx:$PATH

# NVM setup (if needed)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Linuxbrew setup (if needed)
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Sometimes the completion script is not sourced properly
complete -o default -F __start_kubectl k # not needed on mac

# Custom aliases
alias bashconfig="nano ~/.bashrc"

# Preferred editor
export EDITOR='nano'
