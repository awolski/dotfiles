#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
EDITOR=nvim

alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# Set SSH_AUTH_SOCK so that SSH will use gpg-agent instead of ssh-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# Configure pinentry to use the correct tty
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

# Source additional dotfiles
for file in ~/.files/*; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Add useful scripts to PATH
if [ ! -d ~/.local/bin ]; then
    mkdir -p ~/.local/bin
    cp ~/.files/bin/* "$HOME/.local/bin/"
fi
export PATH="$PATH:$HOME/.local/bin"

# Start Xorg at boot
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
