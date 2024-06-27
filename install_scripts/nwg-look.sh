#!/usr/bin/env bash

sudo apt install -y libgtk-3-dev libcairo2-dev libglib2.0-bin zip unzip

cd ~/Downloads

wget https://github.com/nwg-piotr/nwg-look/archive/refs/tags/v0.2.7.zip
unzip v0.2.7.zip
cd nwg-look-0.2.7

make build
sudo make install

cd ..
rm -rf nwg-look-0.2.7

rm v0.2.7.zip
