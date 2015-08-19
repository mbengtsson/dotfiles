setopt PROMPT_SUBST
export GIT_PS1_SHOWDIRTYSTATE=1

function _git_info() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%K{yellow}%}%{%F{black}%}  $(__git_ps1 "%s") %{%F{yellow}%K{blue}%}"
  else
    echo "%{%K{blue}%}"
  fi
}

PROMPT_HOST='%{%b%F{gray}%K{black}%} %(?.%{%F{green}%}✔.%{%F{red}%}✘)%{%F{yellow}%} %n %{%F{black}%}'
PROMPT_DIR='%{%F{white}%} %~%  '
PROMPT_SU='%(!.%{%k%F{blue}%K{black}%}%{%F{yellow}%} ⚡ %{%k%F{black}%}.%{%k%F{blue}%})%{%f%k%b%}'

PROMPT='%{%f%b%k%}$PROMPT_HOST$(_git_info)$PROMPT_DIR$PROMPT_SU
❯'
RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
