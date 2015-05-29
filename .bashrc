# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true
alias mini="ssh -X giang@192.168.56.101"
alias miniSftp="sftp giang@192.168.56.101"
alias miniSshfs="sshfs giang@192.168.56.101:/home/giang ~/mini"
alias miniUmount="fusermount -u ~/mini"
alias syncLocal2mini="~/w/script/syncLocal2mini.sh"

#aliases that use for grep code
alias grep_code="~/w/script/grep_code.sh"
alias grepi_code="~/w/script/grepi_code.sh"

#alias that used for generate cscope tags file
alias cscopeGenerate="~/w/script/cscopeGenerate.sh"

#alias that used for tar
alias tarCompress="~/w/script/tarCompress.sh"
alias tarExtract="~/w/script/tarExtract.sh"

export EDITOR=vim
alias vi="vim"
alias gvim="vim -g"

# alias for task warrior
alias t="task"

# alias for jrnl 
alias j="jrnl"

# alias for cd ..: go up 2 directory -> cd ...; go up 1 directory cd ..; go up 3 directory ....
cd() { if [[ "$1" =~ ^\.\.+$ ]];then local a dir;a=${#1};while [ $a -ne 1 ];do dir=${dir}"../";((a--));done;builtin cd $dir;else builtin cd "$@";fi ;}

#COLOR OF BASH
#Color of xterm
TERM=xterm-256color
#Colors of bash promt: (in "Solarized" palette) (http://www.grison.me/2011/11/20/Unix-Prompt)
Color_Off='\[\e[0m\]'       # Text Reset
White='\[\e[0;37m\]'        # White
BPurple='\[\e[1;35m\]'      # Purple
Green='\[\e[0;32m\]'        # Green
Blue='\[\e[0;34m\]'         # Blue
Yellow='\[\e[0;33m\]'       # Yellow
Purple='\[\e[0;35m\]'       # Purple
BWhite='\[\e[1;37m\]'       # White
bashName="me"
PS1="$BWhite$bashName:$Yellow\w$Yellow$White\$ $Color_Off"
#Color of ls command
eval `dircolors /home/giang/.dircolors/dircolors.256dark`
alias ls="ls --color"

#WORKING WITH TMUX
#To fix bug: can not reaccess to tmux pane when we type Ctrl + S only
stty -ixon
