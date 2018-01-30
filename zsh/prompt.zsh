setopt PROMPT_SUBST
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"

function _git_info() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
  
    command git diff --quiet --ignore-submodules HEAD &>/dev/null;
    
    if [[ $? -eq 1 ]]; then
        local color=yellow
    else
        local color=green
    fi   
    
    echo "%{%F{$color}%} $(__git_ps1 "%s")"
  else
    echo ""
  fi
}

function zle-line-init zle-keymap-select {
    VIM_NORMAL="%{%F{yellow}%} [% NORMAL]% %{$reset_color%}"
    RPROMPT="${${KEYMAP/vicmd/$VIM_NORMAL}/(main|viins)/} $EPS1"
    zle reset-prompt
}
PROMPT_EC='%(?.%{%F{green}%}.%{%F{red}%})%?'
PROMPT_USER='%{%F{magenta}%}%n'
PROMPT_DIR='%{%F{blue}%}%~%  '
PROMPT_SU='%{%f%k%b%}%(!.%{%F{red}%}# %{%k%F{black}%})'

PROMPT='%{%f%b%k%}$PROMPT_EC  $PROMPT_USER  $PROMPT_DIR  $(_git_info)
%{%f%k%b%}> '

