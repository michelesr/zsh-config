# history file and size
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE

# general options
autoload -Uz compinit; compinit
autoload -U colors; colors
setopt histignorealldups correct autocd \
       notify menucomplete sharehistory
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

# arrow key selection for completions
zstyle ':completion:*' menu select

# simple color prompt
# PROMPT="%{$fg_bold[cyan]%}%~ %{$fg_bold[yellow]%}$%{$reset_color%} "

source /usr/local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
source ~/Projects/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/Projects/zsh-config/tmux_always
source ~/Projects/zsh-config/xclip_aliases
source ~/Projects/jump/jump
source ~/Projects/glocate/glocate
source /usr/local/bin/virtualenvwrapper.sh
source <(awless completion zsh)
source ~/.fzf.zsh

alias be='bundle exec'
alias vim='nvim'
alias vimdiff='nvim -d'
alias vi='vim'
alias kc='kubectl'
alias grep='grep --color=auto'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ll -a'

infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > /tmp/$TERM.ti
tic /tmp/$TERM.ti
ssh-add -K ~/.ssh/id_ed25519 2> /dev/null
