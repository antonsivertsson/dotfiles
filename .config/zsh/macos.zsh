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

# Add shortcut integration for adding french translations in terminal
fr() {
  if [[ -z "$1" ]]; then
    echo "Supply text to translate"
  else
    echo "$*" | shortcuts run "Translate French" | cat
  fi
}

tofr() {
  if [[ -z "$1" ]]; then
    echo "Supply text to translate"
  else
    echo "$*" | shortcuts run "Translate To French" | cat
  fi
}
