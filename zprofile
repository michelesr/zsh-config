#!/usr/bin/env zsh
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/python@2/bin:$PATH"
PATH="$(rbenv root):$(pyenv root):$HOME/Library/Python/2.7/bin:$GOPATH/bin:$PATH"
export PATH

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export GOPATH="$HOME/Projects/go"
export RANGER_LOAD_DEFAULT_RC=FALSE
export VAULT_ADDR=https://vault.devops.citizensadvice.org.uk
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export EDITOR=nvim

eval "$(rbenv init -)"
eval "$(pyenv init -)"

source /usr/local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
source ~/Projects/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/Projects/simple-zshrc/tmux_always
source ~/Projects/simple-zshrc/xclip_aliases
source ~/Projects/jump/jump
source ~/Projects/glocate/glocate
source /usr/local/bin/virtualenvwrapper.sh
source <(awless completion zsh)
source ~/.fzf.zsh

alias ls='ls -G'
alias be='bundle exec'
alias vim='nvim'
alias vimdiff='nvim -d'
alias vi='vim'
alias kc='kubectl'
alias ls='ls --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'

infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > /tmp/$TERM.ti
tic /tmp/$TERM.ti
ssh-add -K ~/.ssh/id_ed25519 2> /dev/null
