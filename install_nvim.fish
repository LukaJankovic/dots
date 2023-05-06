#!/usr/bin/env fish

rm -rf ~/.config/nvim

git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim

for f in $PWD/nvim.plugins/*
    ln -s $f ~/.config/nvim/lua/custom/plugins/(basename $f)
end

mkdir -p ~/.config/nvim/after/plugin
ln -s $PWD/nvim.defaults/defaults.lua ~/.config/nvim/after/plugin/defaults.lua
