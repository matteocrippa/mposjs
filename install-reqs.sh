#!/bin/bash
echo 'Update local apt-get repos'
sudo apt-get update
echo 'Check for system updates'
sudo apt-get upgrade
echo 'Install requirements...'
sudo apt-get install nodejs couchdb -y
echo 'Installing Node.js modules...'
npm install
echo 'Installing Litecoind requirements'
apt-get install build-essential libboost-all-dev libcurl4-openssl-dev libdb5.1-dev libdb5.1++-dev -y