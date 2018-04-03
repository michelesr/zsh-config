typeset -U path fpath

fpath=($HOME/.zsh/func $fpath)

export EDITOR='vim'
export WORKON_HOME=$HOME/.virtualenvs

export GOPATH=$HOME/Projects/go
export path=($path $GOPATH/bin .)

eval "$(rbenv init -)"
