typeset -U path fpath PATH GOPATH

fpath=($HOME/.zsh/func $fpath)

export \
  EDITOR='vim' \
  VAULT_ADDR=https://vault.devops.citizensadvice.org.uk \
  GOPATH=$HOME/Projects/go \
  RANGER_LOAD_DEFAULT_RC=FALSE \
  SSH_AUTH_SOCK=/run/user/1000/keyring/ssh \
  path=($GOPATH/bin ~/.cargo/bin $path)
