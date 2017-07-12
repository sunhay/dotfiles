#!/usr/bin/env bash

echo "Cleaning up previous config files"
rm ~/.zshrc
rm ~/.bashrc
rm ~/.tmux.conf
rm ~/.screenrc
rm ~/.vimrc
rm -rf ~/.vim
rm ~/.gitconfig
rm ~/.oh-my-zsh/themes/sunhay.zsh-theme
rm ~/.slate

# Paths may need to be changed depending where repo is cloned
echo "Setting up symlinks"
ln -s $PWD/.zshrc ~/.zshrc
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.vim ~/.vim
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/.oh-my-zsh/themes/sunhay.zsh-theme ~/.oh-my-zsh/themes/sunhay.zsh-theme 
ln -s $PWD/.slate ~/.slate

echo "Dotfiles Setup Complete: Restart shell"
