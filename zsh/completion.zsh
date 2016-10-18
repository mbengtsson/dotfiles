# Completion System
autoload -U compinit
compinit -i

# URL magic
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# Show completion menu on succesive tab press
setopt COMPLETE_ALIASES
setopt ALWAYS_TO_END
setopt AUTO_MENU
setopt COMPLETE_IN_WORD

# color code completion
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"

# If no match is found, pass the string on to the command
setopt nonomatch

# Enable menu selection
zstyle ':completion:*' menu select

# Enable case insensitive and backwards completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Completion caching
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
