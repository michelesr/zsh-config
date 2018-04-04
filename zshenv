# avoid duplicates in paths
typeset -U path fpath PATH FPATH MANPATH GOPATH

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export GOPATH="$HOME/Projects/go"

export RANGER_LOAD_DEFAULT_RC=FALSE
export VAULT_ADDR=https://vault.devops.citizensadvice.org.uk
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export EDITOR=nvim

fpath=(~/.zsh/func /usr/local/share/zsh-completions $fpath)

# this is needed to load pyenv and rbenv
path=(/usr/local/bin $path)

# NOTE: this could get overriden by /private/etc/zprofile
path=($GOPATH/bin /usr/local/opt/coreutils/libexec/gnubin /usr/local/sbin $path)

eval "$(rbenv init -)"
eval "$(pyenv init -)"
