eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-z/zsh-z.plugin.zsh
eval "$(direnv hook zsh)"  # For Zsh
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
export EZA_CONFIG_DIR="$HOME/.config/eza/"
alias ls='eza -H --group-directories-first --git'
alias ll='ls -lF'
alias la='eza -al'
alias l='eza -1 --group-directories-first'
alias dotgit='lazygit -w ~ -g ~/.dotfiles'
lsd() {
    if [[ "$1" =~ ^-[0-9]+$ ]]; then
        local depth=${1#-}  # Remove the dash and take the number as depth
        shift               # Shift to handle additional arguments
    else
        local depth=2       # Default depth if no depth argument is given
    fi
    eza --icons -T -L "$depth" --git-ignore "$@"
}

# If using mac, add mac specific configs
if [[ "$OSTYPE" == "darwin"* ]]; then
  CONFIG_MACOS="$HOME/.config/zsh/macos.zsh"
  [[ -f "$CONFIG_MACOS" ]] && source "$CONFIG_MACOS"
fi
