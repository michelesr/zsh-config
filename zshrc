source ~/.zprofile

# history file and size
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE

# general options
autoload -Uz compinit; compinit
autoload -U colors; colors
setopt histignorealldups incappendhistory correct \
       autocd extendedglob notify menucomplete \
       sharehistory autocd autopushd
unsetopt nomatch

# vi key bindings
bindkey -v

# allow delete over start of insert mode
bindkey "^W" backward-kill-word    # vi-backward-kill-word
bindkey "^H" backward-delete-char  # vi-backward-delete-char
bindkey "^U" kill-line             # vi-kill-line
bindkey "^?" backward-delete-char  # vi-backward-delete-char

# history key bindings (arrow and ^R)
bindkey '^R' history-incremental-search-backward
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# autogenerate completion for gnu generic commands from --help
compdef _gnu_generic cfdisk fdisk df udisks free more mv wc head tail tee \
    printenv script htop lshw lscpi pstree vmstat fsck mkfs fdformat shasum \
    netstat ftp curl touch stat paste tr aspell split csplit zathura nl fold \
    transmission-remote transmission-cli transmission-create transmission-daemon \
    transmission-edit transmission-remote transmission-show

zstyle :compinstall filename '~/.zshrc'

# color completions 
zstyle ':completion:*' list-colors ''

# matchers for autocompletion (that is case insensitive)
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:*:git:files' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# arrow key selection for completions
zstyle ':completion:*' menu select

# simple color prompt (debian style user@hostname:pwd$) 
PROMPT="%{$fg_bold[cyan]%}%~ %{$fg_bold[yellow]%}$%{$reset_color%} "

## auto update window title
# case $TERM in
#  *xterm*)
#    precmd () {print -Pn "\e]0;%n@%M: %~\a"}
#  ;;
# esac
##
