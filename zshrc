# NOTE: envars should go in ~/.zshenv

# nvidia-xrun autostart on tty2
# [[ -z $DISPLAY && $XDG_VTNR -eq 2 ]] && exec nvidia-xrun

# always run terminal in a tmux session
source ~/Projects/zsh-config/tmux_always

# lines to save in memory
HISTSIZE=1000000

# history file
HISTFILE=~/.zsh_history

# lines to save in the history filefile
SAVEHIST=${HISTSIZE}

# initialize completion engine
autoload -Uz compinit; compinit

# helper to define arrays to use to print colored output
#
# e.g.
#   echo ${fg[red]}foo ${reset_color}bar
#
# see the code with:
#   which colors
autoload -U colors; colors

# if can't expand regex, don't fail and just leave it as it is
unsetopt nomatch

# share history between sessions and remove duplicates
setopt histignorealldups sharehistory

# automatically select first entry in the completion menu when pressing tab
setopt menucomplete

# notify immediately when background jobs finish rather than on next prompt
setopt notify

# try to suggest corrections for typos before running a command
setopt correct

# enable vi mode
bindkey -v

# in insert mode: delete a word
bindkey "^W" backward-kill-word
# in insert mode: delete a char
bindkey "^H" backward-delete-char
# in insert mode: delete a line
bindkey "^U" backward-kill-line
# in insert mode: delete a char with backspace
bindkey "^?" backward-delete-char

# start typing and use up/down arrow keys to search matches in the history
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# autogenerate completion for gnu generic commands from --help
compdef _gnu_generic df

# colored entries in the completion menu
zstyle ':completion:*' list-colors ''

# use arrow keys to move in the completion menu
zstyle ':completion:*' menu select

# completions for aws and awless
source /bin/aws_zsh_completer.sh
source <(awless completion zsh)

# powerline prompt
source /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

# clipboard management aliases (e.g. cin out)
source ~/Projects/zsh-config/xclip_aliases

# mark directories and jump easily
source ~/Projects/jump/jump

# syntax highlighting for the zsh shell
source ~/Projects/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf bindings and completions
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
