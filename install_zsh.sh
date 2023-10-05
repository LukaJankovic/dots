#!/usr/bin/env zsh

rm -f ~/.zshrc
ln -s $PWD/zshrc ~/.zshrc

rm -f ~/.zsh_plugins.txt
ln -s $PWD/zsh_plugins.txt ~/.zsh_plugins.txt

rm -f ~/.config/starship.toml
ln -s $PWD/starship.toml ~/.config/starship.toml

