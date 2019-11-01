#!/usr/bin/env sh
# Profile file. Runs on login.

export EDITOR="nano"
export TERMINAL="urxvt"
export BROWSER="google-chrome-stable"
export READER="zathura"
export FILE="nautilus"
export PATH="$HOME/.cargo/bin:$PATH"

# Start graphical server if not already running.
[ "$(tty)" = "/dev/tty1" ] && exec startx


