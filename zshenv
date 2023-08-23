brew_prefix='/opt/homebrew'
brew_opt="${brew_prefix}/opt"

typeset -U path fpath PATH FPATH MANPATH GOPATH
fpath=($HOME/.zsh/func ${brew_prefix}/share/zsh-completions $fpath)

export MANPATH="${brew_opt}/coreutils/libexec/gnuman:${brew_opt}/findutils/libexec/gnuman:${brew_opt}/gnu-sed/libexec/gnuman:$MANPATH"

export NVIM_LISTEN_ADDRESS="$(getconf DARWIN_USER_DIR)nvim.sock"
export EDITOR="nvr -s --servername ${NVIM_LISTEN_ADDRESS} --remote-tab-wait"

export VISUAL=${EDITOR}
export VAULT_ADDR=https://vault.devops.citizensadvice.org.uk
export GOPATH=$HOME/Projects/go
export RANGER_LOAD_DEFAULT_RC=FALSE
export POWERLINE_NO_ZSH_TMUX=1
export JIRA_API_TOKEN=$(cat ~/.secrets/jira_api_token)

# NOTE: this could get overriden by /private/etc/zprofile
path=(${HOME}/.krew/bin $GOPATH/bin ${brew_opt}/coreutils/libexec/gnubin ${brew_opt}/findutils/libexec/gnubin ${brew_opt}/gnu-sed/libexec/gnubin /usr/local/sbin /usr/local/bin $path)
