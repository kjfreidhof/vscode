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
echo "vscode on your Ubuntu/Debian opreating system on your linux machine"
sleep 5s
echo "run this script at your own ris"k
sleep 5s 
echo "Do you want to install this script? [1|2|]"
echo "y, Yes"
echo "n, No"

apt-get install wget gpg

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

rm -f packages.microsoft.gpg

apt install apt-transport-https

apt update 

apt install code




































