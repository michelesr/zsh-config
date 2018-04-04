typeset -U path fpath PATH GOPATH

fpath=($HOME/.zsh/func $fpath)

export EDITOR='vim'
export WORKON_HOME=$HOME/.virtualenvs
export VAULT_ADDR=https://vault.devops.citizensadvice.org.uk
export GOPATH=$HOME/Projects/go
export RANGER_LOAD_DEFAULT_RC=FALSE

export path=($GOPATH/bin $path)

eval "$(rbenv init -)"
eval "$(pyenv init -)"
