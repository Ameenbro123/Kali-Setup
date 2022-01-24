#!/bin/sh
cat "Would you like to install common tools? [Y for yes, N for no]"
read yorn
if [$yorn == "Y"]
then
    sudo apt-get update
    sudo apt install python python3 python3-pip python-pip veil git curl rkhunter aide
    mkdir installs
    git clone https://github.com/Screetsec/TheFatRat.git -C ./installs/
    cd TheFatRat
    chmod +x setup.sh && ./setup.sh
else
    clear
    cat Bye.
    sleep 5
    clear
fi
