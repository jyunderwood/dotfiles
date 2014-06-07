# Example:
#
# DIRECTORY [BRANCH STATE]
# RUBY_VERISON PROMPT_CHAR

# Directory
PROMPT_DIRECTORY="%{$fg[blue]%}%~%{$reset_color%}"

# Git
PROMPT_GIT_INFO='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}o"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}] "

# Ruby
if which rbenv > /dev/null; then
  PROMPT_RBENV_INFO="%{$fg[red]%}$(rbenv_prompt_info)%{$reset_color%}";
else
  PROMPT_RBENV_INFO="";
fi

# Root
if [ "$(whoami)" = "root" ]; then
  PROMPT_CHAR="%{$terminfo[bold]$fg[red]%}!%{$reset_color%} ";
else
  PROMPT_CHAR="%{$fg[green]%}$%{$reset_color%} ";
fi

PROMPT="
$PROMPT_DIRECTORY $PROMPT_GIT_INFO
$PROMPT_RBENV_INFO $PROMPT_CHAR"

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
RPS1="${return_code}"
