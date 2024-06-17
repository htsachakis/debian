#!/bin/sh
# Dependencies for Ly Console Manager
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev -y

# Install Ly Console Display Manager
cd ~/Downloads
git clone https://github.com/fairyglade/ly
cd ly
zig build
zig build run
zig build installsystemd
systemctl enable ly.service
