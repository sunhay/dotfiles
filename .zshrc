ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunhay"
plugins=(git)
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/sunhay/.cabal/bin:/home/sunhay/.local/bin:/home/sunhay/bin
export TERM="xterm-256color"

source $ZSH/oh-my-zsh.sh
source ~/.rvm/scripts/rvm

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
