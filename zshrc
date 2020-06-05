# NOTE: envars should go in ~/.zshenv
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

source /usr/local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

source ~/Projects/zsh-config/xclip_aliases
source ~/Projects/jump/jump
source ~/Projects/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.fzf.zsh

infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > /tmp/$TERM.ti
tic /tmp/$TERM.ti

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
alias vim='nvim'
alias vi='vim'
alias nv='nvim'
alias vimdiff='nvim -d'
alias xxd='hexdump -f ~/.local/share/hexdump-format-file'

# kubernetes cli
alias kc='kubectl'

alias be='bundle exec'
alias poweroff="osascript -e 'tell app \"System Events\" to shut down'"

#ssh-add -K ~/.ssh/id_ed25519 2> /dev/null
