#!/usr/bin/env fish

rm -f ~/.vimrc
ln -s $PWD/vimrc ~/.vimrc

rm -f ~/.config/starship.toml
ln -s $PWD/starship.toml ~/.config/starship.toml

rm -f ~/.config/fish/config.fish
ln -s $PWD/config.fish ~/.config/fish/config.fish

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
