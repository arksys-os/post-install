#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -r "/usr/share/bash-completion/bash_completion" ]] && . "/usr/share/bash-completion/bash_completion"

# bashrc PS1 generator
# export PS1="\[\033[38;5;85m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;215m\]\h\[$(tput sgr0)\]>[\w]:\\$ \[$(tput sgr0)\]"

eval "$(starship init bash)"

alias c='clear'
alias hg='history'
alias i='ip -br -c a'
alias ls='ls --color=auto'
alias pacman='sudo pacman'
alias grep='grep --color=auto'
alias update='sudo pacman -Syu && yay -Syu && flatpak update'
alias backup='rsync -aAXv --delete /0/ /run/media/d7/ssd-backup/ && echo -e "External SSD backup done!"'
alias test-backup='rsync -aAXv --delete --dry-run /0/ /run/media/d7/ssd-backup/ && echo -e "External SSD backup test done!"'
alias reflector='sudo reflector --latest 50 --country Portugal,Spain,France,Italy,Germany,Sweden,"United Kingdom","United States" --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist'
. "$HOME/.cargo/env"
alias shut='shutdown now'
