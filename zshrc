# Download antidote
if [[ ! -d ${ZDOTDIR:-~}/.antidote ]]
then
    git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
fi

# Modules
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# Aliases
alias ls="ls --color=auto"

# Fix history
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

# Start starship
eval "$(starship init zsh)"
