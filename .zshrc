eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-z/zsh-z.plugin.zsh
eval "$(direnv hook zsh)"  # For Zsh
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/antonsivertsson/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/antonsivertsson/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/antonsivertsson/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/antonsivertsson/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Created by `pipx` on 2025-08-06 04:12:06
export PATH="$PATH:/Users/antonsivertsson/.local/bin"
