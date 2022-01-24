#!/bin/sh
read -p "Would you like to install common tools? [Y for yes, N for no]: " yorn
if [ $yorn = "Y" ]; then
    sudo apt-get update
    sudo apt install python python3 python3-pip python-pip git curl rkhunter aide
    mkdir installs
    git clone https://github.com/Screetsec/TheFatRat.git ./installs/
    cd ./installs/TheFatRat
    chmod +x setup.sh && ./setup.sh
else
    clear
    echo Bye.
    sleep 5
    clear
fi
