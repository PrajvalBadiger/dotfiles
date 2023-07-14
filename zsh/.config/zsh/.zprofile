#!/bin/sh

# add ~/.local/bin and ~/.cargo/bin to PATH
export PATH=~/.local/bin/:/home/prajval/.cargo/bin:$PATH

# Default programs:
export EDITOR=/usr/bin/vim
export TERMINAL="alacritty"
export BROWSER="brave-browser-beta"
export MANPAGER="env MAN_PN=1 vim -M +MANPAGER -"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/history"

export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export LESSHISTFILE="-"

[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
