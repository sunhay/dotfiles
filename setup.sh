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

# Paths may need to be changed depending where repo is cloned
echo "Setting up symlinks"
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.screenrc ~/.screenrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.oh-my-zsh/themes/sunhay.zsh-theme ~/.oh-my-zsh/themes/sunhay.zsh-theme 

echo "Dotfiles Setup Complete: Restart shell"
