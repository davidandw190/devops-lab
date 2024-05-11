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
alias kg='kubectl get'
alias kd='kubectl describe'
alias kc='kubectl create'
alias ke='kubectl edit'
alias kdelf='kubectl delete --force --grace-period=0'
alias kaf='kubectl apply -f'
alias kex='kubectl exec -it'
alias klogs='kubectl logs'
alias kp='kubectl port-forward'
alias ktop='kubectl top'

# Docker aliases
alias d='docker'
alias dps='docker ps'
alias di='docker images'
alias dstopall='docker stop $(docker ps -a -q)'
alias drmall='docker rm $(docker ps -a -q)'
alias drmi='docker rmi $(docker images -q)'
alias dpauseall='docker pause $(docker ps -q)'

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
