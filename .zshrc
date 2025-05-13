## ZSH Configuring

# Load colors
autoload -U colors && colors

# Autocomplete
autoload -U compinit
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
# I genuinely do not know what these two lines do, all i know is its from omz
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zmodload zsh/complist
compinit

# Useful ZSH plugins
source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh
source /usr/share/zsh/site-functions/zsh-autosuggestions.zsh

# ZSH history
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="$HOME/.local/share/zsh_history"

# Prompt
PROMPT='%(!.%B%F{red}.%B%F{green}%n@)%m %F{blue}%(!.%1~.%~) %F{blue}%(!.#.$)%k%b%f '

# Misc
stty stop undef # Disable Ctrl + S terminal freeze
bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

## "Shell" configuration 

# Export user modified path
export PATH="$PATH:$HOME/.config/scripts:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.spicetify:$HOME/.config/emacs/bin/"

# Other exports
export EDITOR="nvim"
export EDITOR_SU="nvim"
export SU_CMMD="sudo"
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$HOME/Android/Sdk/ndk/26.1.10909125"

# Aliases
alias keywords="$SU_CMMD $EDITOR_SU /etc/portage/package.accept_keywords/keywords"
alias useflags="$SU_CMMD $EDITOR_SU /etc/portage/package.use/useflags"
alias makeconf="$SU_CMMD $EDITOR_SU /etc/portage/make.conf"
alias unmask="$SU_CMMD $EDITOR_SU /etc/portage/package.unmask/unmask"
alias gccenv="$SU_CMMD $EDITOR_SU /etc/portage/package.env/gcc"
alias world="$SU_CMMD $EDITOR_SU /var/lib/portage/world"
alias ls="ls --color"
alias ssh="TERM=\"xterm-256color\" ssh"
alias distrobox="TERM=\"xterm-256color\" distrobox"
alias zshrc="$EDITOR $HOME/.zshrc"
alias szsh="source $HOME/.zshrc"
alias poverlay="cd $HOME/Development/overlays/chinh-personal"
alias rags="ags quit && ags &!"
alias rwaybar="killall waybar && waybar &!"
alias eselect="$SU_CMMD eselect"
alias weather="curl wttr.in"

# Autolaunch Hyprland when logged in
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec Hyprland
fi
