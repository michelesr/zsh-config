typeset -U path fpath PATH FPATH MANPATH GOPATH
fpath=($HOME/.zsh/func $fpath)

homebrew_path='/opt/homebrew/opt'
export MANPATH="${homebrew_path}/coreutils/libexec/gnuman:${homebrew_path}/findutils/libexec/gnuman:$MANPATH"

export EDITOR='vim'
export VISUAL=${EDITOR}
export VAULT_ADDR=https://vault.devops.citizensadvice.org.uk
export GOPATH=$HOME/Projects/go
export RANGER_LOAD_DEFAULT_RC=FALSE
export POWERLINE_NO_ZSH_TMUX=1

# NOTE: this could get overriden by /private/etc/zprofile
path=($GOPATH/bin ${homebrew_path}/coreutils/libexec/gnubin ${homebrew_path}/findutils/libexec/gnubin /usr/local/sbin /usr/local/bin $path)
