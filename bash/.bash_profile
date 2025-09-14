# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# XDG Base Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Shell
export BROWSER='qutebrowser'
export EDITOR='nvim'
export TERMINAL='alacritty'
export TERM='xterm-256color'
export HISTFILE=$XDG_DATA_HOME/history
export HISTSIZE=50000
export SAVEHIST=50000
export PATH="$HOME/.local/bin/:$PATH"

# ~/ Clean-up:
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export LESSHISTFILE="-"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export STACK_ROOT="$XDG_DATA_HOME"/stack
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
# export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
# export XINITRC="$XDG_CONFIG_HOME"/x11/xinitrc
export ZDOTDIR=$HOME/.config/zsh

if [[ -z "$DISPLAY" ]] && [[ $(tty) == /dev/tty1 ]]; then
    exec startx
fi
