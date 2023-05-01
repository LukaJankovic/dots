#!/usr/bin/env fish

rm -rf ~/.config/nvim

git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim

mkdir -p ~/.config/nvim/after/plugin

ln -s $PWD/nvim/filetree.lua ~/.config/nvim/lua/custom/plugins/filetree.lua
ln -s $PWD/nvim/nord.lua ~/.config/nvim/lua/custom/plugins/nord.lua
ln -s $PWD/nvim/defaults.lua ~/.config/nvim/after/plugin/defaults.lua
