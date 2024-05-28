export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"
alias tree="eza --icons --tree --long"
#alias grep='grep --color'

eval "$(starship init zsh)"
