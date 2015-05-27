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
alias endor="ssh xgiando@endor"
alias endorSftp="sftp xgiando@endor"
alias endorSshfs="sshfs xgiando@endor:/home/xgiando/ ~/endor"
alias endorUmount="fusermount -u ~/endor"

alias linuxHub="ssh xgiando@esekilxxen1451.rnd.ki.sw.ericsson.se"
alias linuxHubSftp="sftp xgiando@esekilxxen1451.rnd.ki.sw.ericsson.se"

alias solarHub="ssh xgiando@esekits3512.rnd.ki.sw.ericsson.se"
alias solarHubSftp="sftp xgiando@esekits3512.rnd.ki.sw.ericsson.se"

alias eabSshfs="sshfs xgiando@esekits3512.rnd.ki.sw.ericsson.se:/home/xgiando/ ~/eabHub"
alias eabUmount="fusermount -u ~/eabHub"

alias b52="ssh xgiando@ssekilx5052.rnd.ericsson.se"
alias b52Sftp="sftp xgiando@ssekilx5052.rnd.ericsson.se"
alias b52Sshfs="sshfs xgiando@ssekilx5052.rnd.ericsson.se:/build5052/xgiando/ ~/b52"
alias b52Umount="fusermount -u ~/b52"

alias vn="ssh root@vnljp2050"
alias vnSftp="sftp root@vnljp2050:/home/xgiando/"
alias vnSshfs="sshfs root@vnljp2050:/home/xgiando/ ~/vn/"
alias vnUmount="fusermount -u ~/vn"
alias syncLocal2vn="~/w/script/syncLocal2vn.sh"

alias vnaps1="ssh xgiando@vnaps1"
alias vnaps1Sftp="sftp xgiando@vnaps1:/home/xgiando/"
alias vnaps1Sshfs="sshfs xgiando@vnaps1:/home/xgiando/ ~/vnaps1/"
alias vnaps1Umount="fusermount -u ~/vnaps1"
alias syncLocal2vnaps1="~/w/script/syncLocal2vnaps1.sh"

alias pi="ssh giang@172.16.89.165"
alias piSftp="sftp giang@172.16.89.165"
alias piSshfs="sshfs giang@172.16.89.165:/home/giang/ ~/pi"
alias piUmount="fusermount -u ~/pi"
alias syncLocal2pi="~/w/script/syncLocal2pi.sh"

alias vde="ssh xpu@192.168.174.129"
alias vdeSftp="sftp xpu@192.168.174.129"
alias vdeSshfs="sshfs xpu@192.168.174.129:/home/xpu/ ~/vde"
alias vdeUmount="fusermount -u ~/vde"
alias syncLocal2vde="~/w/script/syncLocal2vde.sh"

alias lub="ssh -X giang@192.168.56.102"
alias lubSftp="sftp giang@192.168.56.102"
alias lubSshfs="sshfs giang@192.168.56.102:/home/giang ~/lub"
alias lubUmount="fusermount -u ~/lub"
alias syncLocal2lub="~/w/script/syncLocal2lub.sh"

alias mini="ssh -X giang@192.168.56.101"
alias miniSftp="sftp giang@192.168.56.101"
alias miniSshfs="sshfs giang@192.168.56.101:/home/giang ~/mini"
alias miniUmount="fusermount -u ~/mini"
alias syncLocal2mini="~/w/script/syncLocal2mini.sh"

#aliases that use for grep code
alias grep_code="~/w/script/grep_code.sh"
alias grepi_code="~/w/script/grepi_code.sh"

#alias that use for transfer code between local machine and endor server
alias syncLocal2endor="~/w/script/syncLocal2endor.sh"
alias syncEndor2local="~/w/script/syncEndor2local.sh"

#alias that use for transfer code between local machine and linux hub in eab server
alias syncLocal2hub="~/w/script/syncLocal2hub.sh"
alias syncHub2local="~/w/script/syncHub2local.sh"

#alias that use for transfer code between local machine to eab hub (after, eab hub is mounted into an folder in my local computer
alias catLocal2hub="~/w/script/catLocal2hub.sh"
alias catLocal2b52="~/w/script/catLocal2b52.sh"

#alias that use for transfer pcap files from b52 to local computer
alias getPcapb522local="~/w/script/getPcapb522local.sh"

#alias that used for generate cscope tags file
alias cscopeGenerate="~/w/script/cscopeGenerate.sh"

#alias that used for tar
alias tarCompress="~/w/script/tarCompress.sh"
alias tarExtract="~/w/script/tarExtract.sh"

alias workspace="cd ~/w"
alias ipv6="cd ~/w/IPv6"

export EDITOR=vim
alias vi="vim"
alias gvim="vim -g"

#define color
#define for gnome terminal or original xterm
#C_RED="\[\033[0;31m\]"
#C_GREEN="\[\033[0;32m\]"
#C_LIGHT_GRAY="\[\033[0;37m\]"
#C_RESET="\[\033[0m\]"
#C_BROWN="\[\033[0;33m\]"
#C_BLUE="\[\033[0;34m\]"
#C_PURPLE="\[\033[0;35m\]"
#C_CYAN="\[\033[0;36m\] "
#C_GRAY="\[\033[1;30m\]"
#C_WHITE="\[\033[1;37m\]"
#C_YELLOW="\[\033[1;33m\]"
#C_LIGHT_BLUE="\[\033[1;34m\]"
#C_LIGHT_CYAN="\[\033[1;36m\]"
#C_LIGHT_PURPLE="\[\033[1;35m\]"
#C_LIGHT_RED="\[\033[1; 31m\]"
#C_LIGHT_GREEN="\[\033[1;32m\]"
#PS1="$C_YELLOW$bashName:$C_LIGHT_RED\w$C_RED$C_YELLOW\$ $C_RESET"
#define for solarized pallete
#http://www.grison.me/2011/11/20/Unix-Prompt
# Reset
Color_Off='\[\e[0m\]'       # Text Reset

# Colors will work nice when used with "Solarized" palette.
# Nothing new here
White='\[\e[0;37m\]'        # White
BPurple='\[\e[1;35m\]'      # Purple
Green='\[\e[0;32m\]'        # Green
Blue='\[\e[0;34m\]'         # Blue
Yellow='\[\e[0;33m\]'       # Yellow
Purple='\[\e[0;35m\]'       # Purple
BWhite='\[\e[1;37m\]'       # White

bashName="me"
#PS1="$C_YELLOW\H:$C_BLUE\w$C_RED$C_YELLOW\$ $C_RESET"
PS1="$Purple$bashName:$White\w$White$Yellow\$ $Color_Off"

# alias for task warrior
alias t="task"

# alias for jrnl 
alias j="jrnl"

# alias for cd ..: go up 2 directory -> cd ...; go up 1 directory cd ..; go up 3 directory ....
cd() { if [[ "$1" =~ ^\.\.+$ ]];then local a dir;a=${#1};while [ $a -ne 1 ];do dir=${dir}"../";((a--));done;builtin cd $dir;else builtin cd "$@";fi ;}

TERM=xterm-256color
eval `dircolors /home/giang/.dircolors/dircolors.256dark`

#To fix bug: can not reaccess to tmux pane when we type Ctrl + S only
stty -ixon
