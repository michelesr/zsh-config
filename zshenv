brew_prefix="$(brew --prefix)"
brew_opt="${brew_prefix}/opt"

typeset -U path fpath PATH FPATH MANPATH GOPATH
fpath=($HOME/.zsh/func ${brew_prefix}/share/zsh-completions $fpath)

export MANPATH="${brew_opt}/coreutils/libexec/gnuman:${brew_opt}/findutils/libexec/gnuman:$MANPATH"

export EDITOR='vim'
export VISUAL=${EDITOR}
export VAULT_ADDR=https://vault.devops.citizensadvice.org.uk
export GOPATH=$HOME/Projects/go
export RANGER_LOAD_DEFAULT_RC=FALSE
export POWERLINE_NO_ZSH_TMUX=1

# NOTE: this could get overriden by /private/etc/zprofile
path=($GOPATH/bin ${brew_opt}/coreutils/libexec/gnubin ${brew_opt}/findutils/libexec/gnubin /usr/local/sbin /usr/local/bin $path)
