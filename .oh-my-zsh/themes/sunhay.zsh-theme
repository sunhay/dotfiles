ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}●"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}●"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}●"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}●"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[blue]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}?"

local git_branch='$(git_prompt_info)%{$reset_color%}($(git_prompt_status)%{$reset_color%})'
local user='%{$fg[blue]%}%n@%{$fg[red]%}%m:%{$fg[magenta]%}%{$reset_color%}'
local pwd='%{$fg[cyan]%}%~%{$reset_color%}'
local ruby_ver='(%{$fg[cyan]%}$(ruby --version | sed -e "s/(.*//g" | sed "s/^[ \t]*//;s/[ \t]*$//")%{$reset_color%})'

PROMPT="${user}${pwd}$ "
RPROMPT="git:${git_branch} ruby:${ruby_ver}"
