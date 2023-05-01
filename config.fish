set fish_greeting

starship init fish | source

alias vim=nvim
alias vi=nvim

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
