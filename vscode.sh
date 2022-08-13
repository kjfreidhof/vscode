#!/bin/bash 

is_user_root () { [ "$(id -u)" -eq 0 ]; }

if is_user_root; then
    echo 'You are the almighty root!'
    return
else
    echo 'You are just an ordinary user.' >&2
    exit 1
fi

echo "This script will install"
sleep 5s
echo "vscode or vscodium on your Ubuntu/Debian opreating system on your linux machine"
sleep 5s
echo "run this script at your own ris"k
sleep 5s 
echo "Do you want to install this script? [1|2|]"
echo "y, Yes"
echo "n, No"

read -rp "> " CHOICE

if [ "$CHOICE" = y ]; then 
return

elif [ "$CHOICE" = n ]; then 
exit


else

        exit



fi

apt-get install wget gpg

#wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

#install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

#sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

#rm -f packages.microsoft.gpg

apt install apt-transport-https

apt update 
sleep 5s

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg


echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main'| tee /etc/apt/sources.list.d/vscodium.list

apt update 
sleep 5s

echo "Do you want to install vscode or vscodium [1|2|3|]"
echo "1, vscode"
echo "2, vscodium"
echo "3, exit"


read -rp "> " CHOICE
 
if [ "$CHOICE" = 1 ]; then 
apt install code 
exit

elif [ $CHOICE = 2 ]; then 
apt install codium 
exit

elif [ $CHOICE = 3 ]; then 
exit

else
        exit

fi


























