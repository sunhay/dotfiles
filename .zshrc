ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunhay"
plugins=(git)

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export TERM="xterm-256color"

export PATH=$PATH:~/workspace/google_appengine # Add Google App engine
alias gae="dev_appserver.py src/ --port=3030 --host=0.0.0.0 --admin_port=3031 --admin_host=0.0.0.0"
alias deploy-gae-prod="appcfg.py --oauth2 --noauth_local_webserver update src/"

source $ZSH/oh-my-zsh.sh
