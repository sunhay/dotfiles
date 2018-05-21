ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunhay"
plugins=(git)

export WORKSPACE=$HOME/workspace
export GOPATH=$WORKSPACE/go

source $HOME/.env.sh

eval "$(rbenv init -)"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

source $ZSH/oh-my-zsh.sh

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="$PATH:$HOME/dd/devtools/bin"
PATH="$PATH:$GOPATH/bin"
export PATH=~/Library/Python/3.6/bin:$PATH

# Use exa over ls if it exists
if type "exa" > /dev/null; then
  alias ls="exa -bghHliS"
  alias l="exa -bghHliS"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sunny.klair/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/sunny.klair/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sunny.klair/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/sunny.klair/google-cloud-sdk/completion.zsh.inc'; fi

notes() {
  local fpath=$HOME/notes.md

  echo $1
  if [ "$1" = "vim" ]; then
    vim + $fpath
  elif [ "$1" = "date" ]; then
    echo '' >> $fpath
    echo '# '`date +"%m-%d-%Y-%T"` >> $fpath
    echo '---------------------' >> $fpath
  elif [ "$1" = "" ]; then
    less +G $fpath
  else
    echo '' >> $fpath
    echo $@ >> $fpath
  fi

}
source ~/.cloudops-cli.completion
