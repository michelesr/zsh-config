typeset -U path
typeset -U fpath

fpath=($HOME/.zsh/func $fpath)

export GOPATH=$HOME/Projects/go
export path=($path $HOME/.gem/ruby/2.4.0/bin $GOPATH/bin .)

export EDITOR='vim'
export WORKON_HOME=$HOME/.virtualenvs
