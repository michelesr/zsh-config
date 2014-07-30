# history file and size
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE

# general options
autoload -Uz compinit && compinit
autoload -U colors && colors
setopt histignorealldups incappendhistory completealiases \
       nocasematch correct autocd extendedglob notify

# vim keybinding and ^R for incremental-history-search
bindkey -v
bindkey '^R' history-incremental-search-backward

# autogenerate completion for gnu generic commands from --help
compdef _gnu_generic cfdisk fdisk df udisks free more mv wc head tail tee \
    printenv script htop lshw lscpi pstree vmstat fsck mkfs fdformat shasum \
    netstat ftp curl touch stat paste tr aspell split csplit zathura nl fold \
    transmission-remote transmission-cli transmission-create transmission-daemon \
    transmission-edit transmission-remote transmission-show

zstyle :compinstall filename '~/.zshrc'
# matchers for autocompletion (that is case insensitive)
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:*:git:files' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# arrow key selection for completions
zstyle ':completion:*' menu select

# simple color prompt (debian style user@hostname:pwd$) 
PROMPT="%{$fg_bold[red]%}%n@%M%{$fg_bold[blue]%}:%{$fg_no_bold[green]%}%~%{$fg_bold[blue]%}$%{$reset_color%} "

# auto update window title
case $TERM in
  *xterm*)
    precmd () {print -Pn "\e]0;%n@%M: %~\a"}
  ;;
esac

source ~/.zprofile
