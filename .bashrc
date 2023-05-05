#!/usr/bin/env bash

export PATH="$HOME/.emacs.d/bin:$PATH"
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\][\[$(tput setaf 4)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 4)\]\W\[$(tput setaf 4)\]]\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"
fish
