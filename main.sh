#!/bin/sh
BANNER=$(cat <<-END
        __ __      ___    __    _            __        ____         
       / //_/___ _/ (_)  / /   (_)___  _____/ /_____ _/ / /__  _____
      / ,< / __ `/ / /  / /   / / __ \/ ___/ __/ __ `/ / / _ \/ ___/
     / /| / /_/ / / /  / /___/ / / / (__  ) /_/ /_/ / / /  __/ /    
    /_/ |_\__,_/_/_/  /_____/_/_/ /_/____/\__/\__,_/_/_/\___/_/     
    ---------------------------------------------------------------
    
    This will install multiple tools, as well as make folders and take up about 1 GB of storage. 
    Would you still like to install common tools? [Y for yes, N for no]
END
)
cat $BANNER
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
