#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# if rust is installed
export PATH="$HOME/.cargo/bin:$PATH"

# Start graphical server if not already running.
[ "$(tty)" = "/dev/tty1" ] && exec startx
