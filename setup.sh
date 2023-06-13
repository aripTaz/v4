#!/bin/bash
# VPN Premium Script
# by Taz-VPN
# Telegram: https://t.me/Tazpin 
# Thanks for using this script, Enjoy Highspeed VPN Service

red='\e[1;31m'
green='\e[1;32m'
yellow='\e[1;33m'
blue='\e[1;34m'
NC='\e[0m'

clear

echo -e ""
echo -e "   ___ ___ ___ _____ _   _  ___   _____ _  _  "
echo -e "  / __| __| __|_   _/_\ | \| \ \ / / _ \ \| | "                                       
echo -e "  \__ \ _|| _|  | |/ _ \| .` |\ V /|  _/ .` | "
echo -e "  |___/___|___| |_/_/ \_\_|\_| \_/ |_| |_|\_| "
echo -e ""
echo -e "[+]=========================================[+]"
echo -e "[+]       Copyright Script by Taz-VPN       [+]"
echo -e "[+]         Whatshapp : 083849022672        [+]"
echo -e "[+]      Telegram : http://t.me/Tazpin      [+]"
echo -e "[+]=========================================[+]"
echo -e ""

sleep 3

clear

#root Check
if [ "${EUID}" -ne 0 ]; then
    echo -e "${red}You need to run this script as root user${NC}"
    sleep 3
    exit 
 fi

#run update before start installing ,
#for ensure if forget update
apt update && apt upgrade -y

clear

# install wget and curl
apt install curl -y

clear

apt install jq -y 

# Get IP server
WebIP = $(curl -s ipinfo.io/ip)

# remove any old and not use 
apt-get -y remove unscd

clear
# install Script tunel
echo -e " ${green}"
echo -e "   ___ ___ ___ _____ _   _  ___   _____ _  _  "
echo -e "  / __| __| __|_   _/_\ | \| \ \ / / _ \ \| | "                                       
echo -e "  \__ \ _|| _|  | |/ _ \| .` |\ V /|  _/ .` | "
echo -e "  |___/___|___| |_/_/ \_\_|\_| \_/ |_| |_|\_| "
echo -e " $ {NC}"
echo -e "${yellow}[+]=========================================[+]"
echo -e "[+]          Install Script Tunel           [+]"
echo -e "[+]        Copyright By Taz-VPN 2023        [+]"
echo -e "[+]=========================================[+]"
echo -e " ${NC}"
sleep 3
clear

cd

wget https://link/ssh.sh
chmod +x ssh.sh
./ssh.sh

clear

# install webpage
echo -e " ${green}"
echo -e "[+]=========================================[+]"
echo -e "[+]          Install Simple Webpage         [+]"
echo -e "[+]        Copyright By Taz-VPN  2023       [+]"
echo -e "[+]=========================================[+]"
echo -e " ${NC}"
sleep 3
clear

cd

wget https://link/webpage.sh
chmod +x webpage.sh
./webpage.sh

clear

# Install Webmin apps
# install webpage
echo -e " ${yellow}"
echo -e "[+]=========================================[+]"
echo -e "[+]            Install Webmin apps          [+]"
echo -e "[+]        Copyright By Taz-VPN  2023       [+]"
echo -e "[+]=========================================[+]"
echo -e " ${NC}"
sleep 3
clear

cd 

wget -0 webmin-current.deb "https://www.dropbox.com/s/pgdt19u7szg2vid/webmin_1.979_all.deb?dl=0"
dpkg -i --force-all webmin-curret.deb
apt-get -y install
rm -rf /root/webmin-curret.deb
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf
service webmin restart

clear

# Remove all installations file download

clear

cd

rm -rf *

clear

cat /dev/null > ~/.bash_history && history -c

echo -e " ${green}"
echo -e "[+]=========================================[+]"
echo -e "[+]             Install Selesai             [+]"
echo -e "[+]        Copyright By Taz-VPN  2023       [+]"
echo -e "[+]=========================================[+]"
echo -e " ${NC}"
echo -e " ${blue}Webpage : https://$WebIP"
echo -e "Contact Admin : https://t.me/Tazpin ${NC}"
echo -e " ${yellow}"
echo -e "   ___ ___ ___ _____ _   _  ___   _____ _  _  "
echo -e "  / __| __| __|_   _/_\ | \| \ \ / / _ \ \| | "                                       
echo -e "  \__ \ _|| _|  | |/ _ \| .` |\ V /|  _/ .` | "
echo -e "  |___/___|___| |_/_/ \_\_|\_| \_/ |_| |_|\_| "
echo -e "${NC}"

read -p "Type X or blank for Reboot or C For Canceled :" press

if [[$press == 'X']]; then
    reboot
elif [[ $press == 'x' ]]; then
    reboot
elif [[ $press == 'C' ]]; then
    exit 1
elif [[ $press == 'c' ]]; then
    exit 1
else 
    reboot
fi