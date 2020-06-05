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

# if can't expand regex, don't fail and just leave it as it is
unsetopt nomatch

# share history between sessions and remove duplicates
setopt histignorealldups sharehistory

# notify immediately when background jobs finish rather than on next prompt
setopt notify

# try to suggest corrections for typos before running a command
setopt correct

# vi key bindings
bindkey -v

# allow delete over start of insert mode
bindkey "^W" backward-kill-word
bindkey "^H" backward-delete-char
bindkey "^U" kill-line
bindkey "^?" backward-delete-char

# start typing and use arrow keys to search matches in the history
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# autogenerate completion for gnu generic commands from --help
compdef _gnu_generic df

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
