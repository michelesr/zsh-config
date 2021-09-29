if [[ "$IGNORE_ZSHENV" ]]
then
  unset IGNORE_ZSHENV
else
  # avoid duplicates in paths
  typeset -U path fpath PATH FPATH MANPATH GOPATH
  fpath=($HOME/.zsh/func $fpath)

  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:/usr/local/opt/findutils/libexec/gnuman:$MANPATH"

  export EDITOR='vim'
  export VAULT_ADDR=https://vault.devops.citizensadvice.org.uk
  export GOPATH=$HOME/Projects/go
  export RANGER_LOAD_DEFAULT_RC=FALSE
  export POWERLINE_NO_ZSH_TMUX=1

  # NOTE: this could get overriden by /private/etc/zprofile
  path=($GOPATH/bin /usr/local/opt/coreutils/libexec/gnubin /usr/local/opt/findutils/libexec/gnubin /usr/local/sbin /usr/local/bin $path)
