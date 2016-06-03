setopt PROMPT_SUBST
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"

function _git_info() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
  
    command git diff --quiet --ignore-submodules HEAD &>/dev/null;
    
    if [[ $? -eq 1 ]]; then
        local background=yellow
    else
        local background=green
    fi   
    
    echo "%{%K{$background}%}%{%F{black}%}  $(__git_ps1 "%s") %{%F{$background}%K{blue}%}"
  else
    echo "%{%K{blue}%}"
  fi
}

function zle-line-init zle-keymap-select {
    VIM_NORMAL="%{%F{yellow}%} [% NORMAL]% %{$reset_color%}"
    RPROMPT="${${KEYMAP/vicmd/$VIM_NORMAL}/(main|viins)/} $EPS1"
    zle reset-prompt
}

PROMPT_HOST='%{%F{yellow}%K{black}%} %? %n %{%F{black}%}'
PROMPT_DIR='%{%F{black}%} %~%  '
PROMPT_SU='%(!.%{%k%F{blue}%K{black}%}%{%F{yellow}%} ⚡ %{%k%F{black}%}.%{%k%F{blue}%})%{%f%k%b%}'

PROMPT='%{%f%b%k%}$PROMPT_HOST$(_git_info)$PROMPT_DIR$PROMPT_SU
❯ '

