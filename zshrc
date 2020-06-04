# NOTE: envars should go in ~/.zshenv

# nvidia-xrun autostart on tty2
# [[ -z $DISPLAY && $XDG_VTNR -eq 2 ]] && exec nvidia-xrun

# always run terminal in a tmux session
source ~/Projects/zsh-config/tmux_always

# history file and size
HISTFILE=~/.zsh_history
HISTSIZE=1000000
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
bindkey "^W" backward-kill-word
bindkey "^H" backward-delete-char
bindkey "^U" kill-line
bindkey "^?" backward-delete-char

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

source /bin/aws_zsh_completer.sh
source <(awless completion zsh)

source /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

source ~/Projects/zsh-config/xclip_aliases
source ~/Projects/jump/jump
source ~/Projects/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

source ~/.bash_aliases
