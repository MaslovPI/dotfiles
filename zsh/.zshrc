eval "$(starship init zsh)"

# export AWS_VAULT_BACKEND=file
# AWS_PROFILE="s3s-dev"
# export AWS_PROFILE
# export AWS_REGION=us-west-2 
export GPG_TTY=$(tty)

alias reload-zsh="source ~/.zshrc"
alias edit-zsh="nvim ~/.zshrc"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/infrastructure/.aws-aliases.sh

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

alias ls='ls --color=auto'
alias grep='grep --color=auto'

export PATH=~/bin:$PATH

#
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"
alias intopen='nvim $(fzf -m --preview="bat --color=always {}")'

# Obsidian
alias oo='cd $HOME/cozy/notes/'
alias or='nvim $HOME/cozy/notes/inbox/*.md'

# ----- Bat (better cat) -----

export BAT_THEME="Catppuccin Mocha"

# ---- Eza (better ls) -----

alias ls="eza --icons=always"

# ---- TheFuck -----

# thefuck alias
eval $(thefuck --alias)
eval $(thefuck --alias fk)

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

alias cd="z"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
