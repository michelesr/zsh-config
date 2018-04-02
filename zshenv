typeset -U path
typeset -U fpath

fpath=($HOME/.zsh/func $fpath)

export GOPATH=$HOME/Projects/go
export path=($path $GOPATH/bin .)

export EDITOR='vim'
export WORKON_HOME=$HOME/.virtualenvs
