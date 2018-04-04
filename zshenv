fpath=(~/.zsh/func /usr/local/share/zsh-completions $fpath)
typeset -U fpath

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
