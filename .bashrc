# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

export DOCKER_HOST='tcp://0.0.0.0:2375'
export PATH=$PATH:/usr/local/go/bin/:~/go/bin/
export GO111MODULE=on
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
alias gh='cd $(ghq list -p | peco)'
alias gho='gh-open $(ghq list -p | peco)'
. ~/.kubecomple
