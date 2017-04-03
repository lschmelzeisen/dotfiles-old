#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

xhost +local:root > /dev/null 2>&1

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
[[ $DISPLAY ]] && shopt -s checkwinsize

shopt -s expand_aliases

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion


# ==============================================================================
# === bashrc of Lukas Schmelzeisen =============================================

# --- Aliases ------------------------------------------------------------------
alias cp="cp -i"                # Confirm before overwriting something
alias df="df -h"                # Human-readable sizes
alias free="free -m"            # Show sizes in MB
alias more=less
alias ..="cd .."
alias cd..="cd .."
alias df="df -h"
alias ll="ls -l"

# --- Color --------------------------------------------------------------------
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias dmesg='dmesg --color=auto'
alias pacman='pacman --color=auto'
alias diff='colordiff'
# Colorize man pages
man() {
    env LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}
# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# --- PS -----------------------------------------------------------------------
reset=$(tput sgr0)
bold=$(tput bold)
red=$(tput setaf 1)
white=$(tput setaf 7)
if [[ ${EUID} == 0 ]] ; then
    PS1='\[$reset\]\[$red\]\[$bold\]\A \w\$\[$reset\] '
else
    PS1='\[$reset\]\[$white\]\[$bold\]\A \w\$\[$reset\] '
fi
PS2='> '
PS3='> '
PS4='+ '

# --- Evnironment --------------------------------------------------------------
export EDITOR="vim"

# --- Completions --------------------------------------------------------------
complete -cf sudo
complete -cf man
complete -cf rustup

# --- Miscellaneous ------------------------------------------------------------
stty -ixon                      # Disable Ctrl-S hanging the terminal
