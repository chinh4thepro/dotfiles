# zinit location
ZINIT_DIR="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# check if zinit is installed
if [ ! -d "$ZINIT_DIR" ]; then
	mkdir -p "$(dirname $ZINIT_DIR)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_DIR"
fi

# load zinit
source "${ZINIT_DIR}/zinit.zsh"

# intall plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# add snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

# load completions
autoload -U compinit && compinit

# replay cached completions
zinit cdreplay -q

# ohmyposh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"

# keybinds
bindkey -e

# history
HISTSIZE=5000
HISTFILE="${XDG_DATA_HOME:-${HOME}/.local/share}/.zsh_history"
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# shell integrations
eval "$(fzf --zsh)"

# aliases
alias ls='ls --color'

