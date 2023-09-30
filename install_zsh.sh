#!/usr/bin/env zsh

rm -f ~/.zshrc
ln -s $PWD/zshrc ~/.zshrc

rm -f ~/.config/starship.toml
ln -s $PWD/starship.toml ~/.config/starship.toml

