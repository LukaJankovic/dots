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
alias make="mingw32-make"

# Fix history
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

# Fix keybinds
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Start starship
eval "$(starship init zsh)"
