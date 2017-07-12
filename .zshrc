ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunhay"
plugins=(git)

export WORKSPACE=$HOME/workspace
export GOPATH=$WORKSPACE/go

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

source $ZSH/oh-my-zsh.sh
