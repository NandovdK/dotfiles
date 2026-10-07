export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode reminder

source $ZSH/oh-my-zsh.sh

# User configuration

# Terminal autocomplete fix
autoload -Uz compinit && compinit

plugins=(
    git
)

alias dsync="git -C ~/dotfiles pull"
alias src="source ~/.zshrc"
alias k="kubectl"
alias vi="nvim"
alias vim="nvim"
alias tf="terraform"
alias awsshell="aws-vault exec"
alias gst="git status"
alias note="nvim ~/notes.md"
alias unfuck="git reset --soft HEAD~1"

export KUBECONFIG="~/.kube/config"
export EDITOR="nvim"
export NVM_DIR="$(brew --prefix nvm)"
export AWS_PAGER=""

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source <(fzf --zsh)
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
