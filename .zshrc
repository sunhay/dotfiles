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
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

export PATH=~/Library/Python/3.6/bin:$PATH
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Use exa over ls if it exists
if type "exa" > /dev/null; then
  alias ls="exa -bghHliS"
  alias l="exa -bghHliS"
fi

alias k="kubectl"

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

br() {
 git checkout -b sunhay/$1
}

source ~/.cloudops-cli.completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sunny.klair/workspace/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/sunny.klair/workspace/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sunny.klair/workspace/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/sunny.klair/workspace/google-cloud-sdk/completion.zsh.inc'; fi
