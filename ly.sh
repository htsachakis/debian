#!/bin/sh
# Dependencies for Ly Console Manager
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev -y
# Install zig
cd /tmp
wget https://ziglang.org/download/0.12.0/zig-linux-x86_64-0.12.0.tar.xz
tar xf zig-linux-x86_64-0.12.0.tar.xz
# /tmp/zig-linux-x86_64-0.12.0/zig


# Install Ly Console Display Manager
# cd ~/Downloads
git clone https://github.com/fairyglade/ly
cd ly
/tmp/zig-linux-x86_64-0.12.0/zig build
/tmp/zig-linux-x86_64-0.12.0/zig build run
/tmp/zig-linux-x86_64-0.12.0/zig build installsystemd
sudo systemctl enable ly.service
sudo systemctl disable getty@tty2.service
