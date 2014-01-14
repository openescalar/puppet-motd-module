#!/bin/bash
# System information script for production Linux machines

red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;34m'
orange='\033[1;33m'
normal='\033[0m'

MemSize=$(awk '/MemTotal:/{MEM=($2/1024)} END {print int(MEM)}' /proc/meminfo)
PROCS=$(grep processor /proc/cpuinfo | wc -l)
ipaddr=$(ifconfig | grep -m1 "inet addr" | awk '{ print $2}')

echo -e "${normal}                                    ${orange}####"
echo -e "${normal}                                    ${orange}####"
echo -e "${normal}                       ##        ###${orange}#######        ##"
echo -e "${normal}                      #####   ######${orange}##########   #####"
echo -e "${normal}                     ############   ${orange}####   ############" 
echo -e "${normal}                       #######      ${orange}####      #######" 
echo -e "${normal}                         ###        ${orange}####        ###" 
echo -e "${normal}                        ###         ${orange}####         ###" 
echo -e "${normal}                       ###          ${orange}####          ###" 
echo -e "${normal}                      ###           ${orange}####           ###"
echo -e "${normal}                   ######           ${orange}####           ######" 
echo -e "${normal}                   ######           ${orange}####           ######" 
echo -e "${normal}                   ######           ${orange}####           ######" 
echo -e "${normal}                      ###           ${orange}####           ###" 
echo -e "${normal}                       ###          ${orange}####          ###" 
echo -e "${normal}                        ###         ${orange}####         ###"
echo -e "${normal}                         ###        ${orange}####        ###" 
echo -e "${normal}                       #######      ${orange}####      #######" 
echo -e "${normal}                     ############   ${orange}####   ############" 
echo -e "${normal}                      #####   ######${orange}##########   #####" 
echo -e "${normal}                       ##        ###${orange}#######        ##" 
echo -e "${normal}                                    ${orange}####"
echo -e "${normal}                                    ${orange}####"
echo
echo -e "${normal}                   ____                 _"                
echo -e "${normal}                  |  _ \  ___ _ __ ___ (_)${orange} ___  _ __  ___  "
echo -e "${normal}                  | | | |/ _ \ '_ \` _ \| |${orange}/ _ \| '_ \/ __| "
echo -e "${normal}                  | |_| |  __/ | | | | | |${orange} (_) | |_) \__ \ "
echo -e "${normal}                  |____/ \___|_| |_| |_|_|${orange}\___/| .__/|___/ "
echo -e "${normal}                                               ${orange}|_| "        


echo -e "${green}$(hostname) - $(cat /etc/redhat-release)"
echo -e "${blue}IP: ${green}${ipaddr##addr:}" 
echo -e "${blue}CPU Cores: ${green} $PROCS"
echo -e "${blue}Memory: ${green}${MemSize}MB"
echo -e "${blue}Kernel: ${green}$(uname -r)"
echo -e "${red}This system is for employees and contractors only. Unauthorized use of this"
echo -e "system is not permitted. All actions are logged and subject to monitoring.${normal}" 
