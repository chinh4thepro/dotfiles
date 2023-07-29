# Path
export PATH=$HOME/.config/scripts:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH themes
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gentoo"

# Case sensitive stuff
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"

# OMZ automatic update
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 1

# Auto correction
ENABLE_CORRECTION="true"

# ZSH plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Export preferred text editor
export EDITOR='nvim'

# Aliases
alias mkdir='mkdir -p'
alias useflags='doas nvim /etc/portage/package.use/useflags'

# Get terminal colors from wal
cat ~/.cache/wal/sequences
