typeset -U fpath
fpath=($HOME/.zsh/func $fpath)

export NVIM_LISTEN_ADDRESS="${XDG_RUNTIME_DIR}/nvim.sock"
export EDITOR="nvr -s +Sbhd --remote-tab-wait"

export VISUAL=${EDITOR}
export VAULT_ADDR=https://vault.devops.citizensadvice.org.uk
export GOPATH=$HOME/Projects/go
export RANGER_LOAD_DEFAULT_RC=FALSE
export POWERLINE_NO_ZSH_TMUX=1

export GNOME_KEYRING_CONTROL=${XDG_RUNTIME_DIR}/keyring
export SSH_AUTH_SOCK=${XDG_RUNTIME_DIR}/keyring/ssh
