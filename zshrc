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

unsetopt nomatch
setopt histignorealldups sharehistory notify correct

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

# ls formatting and shortcuts
alias ls='ls --group-directories-first --time-style=+"%d/%m/%Y %H:%M" --color=auto'
alias ll='ls -l'
alias la='ls -la'

# color output and ignore dirs unless -r is set
alias grep='grep --color=tty -d skip'

# override prompt with a simple $
alias sp='export PS1="$ "; unset RPS1'

# safer commands
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -I'

# jump to marked directories
alias j='jump'

# reload zsh
alias rl='exec zsh'

# nvim
alias nv='nvim'
alias vimdiff='nvim -d'
alias xxd='hexdump -f ~/.local/share/hexdump-format-file'

# kubernetes cli
alias kc='kubectl'

# hack
alias pmake='make -f <(sed "s/docker run/podman run --userns=keep-id/" Makefile)'
