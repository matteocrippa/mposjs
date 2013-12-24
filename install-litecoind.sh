#!/bin/bash
echo 'Installing Litecoind'
cd ~
git clone git://github.com/litecoin-project/litecoin.git
# Change to src folder
cd ~
cd litecoin/src
# Compile litecoind
make -f makefile.unix USE_UPNP=-
# Copy to system path
sudo cp litecoind /usr/bin
# Litecoin testcoin setup
cd ~
git clone git://github.com/xrobau/litecoin-testnet-box.git
cd litecoin-testnet-box
make start