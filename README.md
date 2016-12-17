# RCoinUSA Repository
# to make daemon 
sudo apt-get -y update \r\n
sudo apt-get -y upgrade
sudo apt-get -y install ufw
sudo apt-get -y install qt4-qmake libqt4-dev build-essential libboost-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev libssl-dev libdb++-dev libminiupnpc-dev git g++ g++-4.6
git clone https://github.com/rcoinwallet/RCoinUSA
cd RCoinUSA
sudo make -f makefile.unix USE_UPNP= RCoinUSAd
cd ..
# to make qt wallet
sudo qmake "USE_UPNP=1" "USE_DBUS=1"
sudo make
