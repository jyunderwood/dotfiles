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

# Root
if [ "$(whoami)" = "root" ]; then
  PROMPT_CHAR="%{$terminfo[bold]$fg[red]%}!%{$reset_color%} ";
else
  PROMPT_CHAR="%{$fg[green]%}$%{$reset_color%} ";
fi

PROMPT="
$PROMPT_DIRECTORY $PROMPT_GIT_INFO
$PROMPT_CHAR"

RPROMPT='%{$fg[red]%}$(rvm-prompt)%{$reset_color%}%'
