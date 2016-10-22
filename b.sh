#!/bin/sh

#Set your interface here
INTERFACE="eth0"


echo $(tput setaf 1)" LastLogin......................................:"$(tput sgr0) $(tput setaf 4) $(last -n 1 | cut -d" " -f 25,26,27,28) $(tput sgr0)
echo $(tput setaf 1)" Uptime.........................................:"$(tput sgr0) $(tput setaf 4) $(uptime -p)$(tput sgr0)
echo $(tput setaf 1)" MemoryFree.....................................:"$(tput sgr0) $(tput setaf 4) $(cat /proc/meminfo | grep MemFree | cut -d":" -f 2) $(tput sgr0)
echo $(tput setaf 1)" Machine........................................:"$(tput sgr0) $(tput setaf 4) $(uname -o) $(tput sgr0)
echo $(tput setaf 1)" Internal_IP....................................:"$(tput sgr0) $(tput setaf 4) $(ifconfig $INTERFACE | grep "inet addr" | cut -d":" -f 2 | cut -d" " -f 1) $(tput sgr0)
tput setaf 3
echo "________________________________________"
echo  $(ss -lt | cut -d":" -f 2 | grep "*" | cut -d" " -f 1 | paste -s -d",") "are listening on TCP"
echo  $(ss -lu | cut -d":" -f 2 | grep "*" | cut -d" " -f 1 | paste -s -d",,\n,") "are on UDP" 
cat << "INFO"
________________________________________
  \
   \
    \
        .--.
       |o_o |
       |:_/ |
      //   \ \
     (|     | )
    /'\_   _/`\
    \___)=(___/

INFO
tput sgr0
