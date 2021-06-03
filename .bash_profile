# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start graphical server if not already running.
[ "$(tty)" = "/dev/tty1" ] && exec startx
