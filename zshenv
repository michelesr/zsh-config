# remove duplicates from path: only keep first occurence
typeset -U path fpath PATH FPATH MANPATH GOPATH

# initialize brew envvars
eval "$(/opt/homebrew/bin/brew shellenv)"

# brew shortcuts
brew_prefix="${HOMEBREW_PREFIX}"
brew_opt="${brew_prefix}/opt"

# add zsh-completions and user defined functions
fpath=($HOME/.zsh/func ${brew_prefix}/share/zsh-completions $fpath)

# make sure GNU utils have precedence in the MANPATH
export MANPATH="${brew_opt}/coreutils/libexec/gnuman:${brew_opt}/findutils/libexec/gnuman:${brew_opt}/gnu-sed/libexec/gnuman:$MANPATH"

# nvim remote integration
export NVIM_LISTEN_ADDRESS="$(getconf DARWIN_USER_DIR)nvim.sock"
export EDITOR="${HOME}/Projects/zsh-config/nvr_wrapper.sh"

export VISUAL=${EDITOR}
export VAULT_ADDR=https://vault.devops.citizensadvice.org.uk
export GOPATH=$HOME/Projects/go
export RANGER_LOAD_DEFAULT_RC=FALSE
export POWERLINE_NO_ZSH_TMUX=1
export JIRA_API_TOKEN=$(cat ~/.secrets/jira_api_token)
export XDG_CONFIG_HOME="${HOME}/.config"

export GEMINI_API_KEY=$(gpg -d ~/.secrets/gemini_api_key.gpg 2>/dev/null)

# make sure GNU utils have precedence in the path
path=(${HOME}/.krew/bin $GOPATH/bin ${brew_opt}/coreutils/libexec/gnubin ${brew_opt}/findutils/libexec/gnubin ${brew_opt}/gnu-sed/libexec/gnubin /usr/local/sbin /usr/local/bin ${HOME}/.local/share/nvim/mason/bin $path)

# Apple has a /etc/zprofile that tends to override the path and lower the
# precedence of the GNU utils so save the current path in OLD_PATH so that can be
# restored later from ~/.zprofile
export OLD_PATH="${PATH}"
