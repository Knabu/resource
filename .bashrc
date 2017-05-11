# ~/.bashrc: executed by bash(1) for non-login shells.

HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=10000
HISTFILESIZE=20000

shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

if [ ! -n "$SSH_TTY" ]; then
  export PS1=">$ "  # Local login
else
  export PS1="\u@\h >$ " # SSH 
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias vi='vim'
alias seed='sudo'
alias ll='ls -latrh'
alias la='ls -A'
alias l='ls -CF'
alias discovery="ssh discovery.indstate.edu -l bigel"
alias cs="ssh cs.indstate.edu -l bigel"
alias test="ssh 159.218.201.118 -l bigel"
alias tdb="ssh vutestdb.vinu.edu -l bigel"
alias vudb="ssh vumaindb.vinu.edu -l bigel"
alias vuims="ssh vuims.vinu.edu -l bigel"
alias tims="ssh testims.vinu.edu -l bigel"
alias vuinb="ssh inbprod.vinu.edu -l bigel"
alias tinb="ssh inbtest.vinu.edu -l bigel"
alias vudw="ssh dwprod.vinu.edu -l bigel"
alias tdw="ssh dwtest.vinu.edu -l bigel"
alias myvu="ssh myvu.vinu.edu -l bigel"
alias vubu="ssh mic_backup.vinu.edu -l bigel"
alias remote="ssh 159.218.45.48 -l bigel"
alias ghost="ssh 139.102.49.143 -l bigel"
alias sparrow="ssh 159.218.45.30 -l bigel"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias f="who"
alias rmbu="rm *~"
alias cdj="cd ~/junk"
alias cdl="cd /opt/luminis/products/mail/sbin"
alias cds="cd /home/oracle/VU/reports/student" 
alias cdd="cd ~/downloads/" 
alias dlcd="cd ~/downloads/" 
alias compile="java -jar ~bigel/games/Minecraft.jar"
alias ctn="cat > /dev/null"

#disable Ctrl-D as a way to exit
IGNOREEOF=1

PATH=$PATH:$HOME/bin:.

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#remove ctrl-d ending session
export IGNOREEOF=42

export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib:/usr/lib/oracle/12.1/client64/bin
export TNS_ADMIN=/usr/lib/jvm/java-8-openjdk-amd64/tns
export TNS_ADMIN=/usr/lib/jvm/java-8-openjdk-amd64/tns
#export JAVA_HOME=/usr/java/jre1.8.0_111

export LPDEST=communist_printer
