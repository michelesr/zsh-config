typeset -U path fpath PATH GOPATH

fpath=($HOME/.zsh/func $fpath)

export \
  EDITOR='vim' \
  VAULT_ADDR=https://vault.devops.citizensadvice.org.uk \
  GOPATH=$HOME/Projects/go \
  RANGER_LOAD_DEFAULT_RC=FALSE \
  path=($GOPATH/bin ~/.cargo/bin /usr/local/bin $path)
