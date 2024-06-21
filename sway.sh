#!/bin/sh

# Dependencies
sudo apt install -y build-essential cmake cmake-extras curl gettext libnotify-bin light meson ninja-build libxcb-util0-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-cursor-dev libxcb-xinerama0-dev libstartup-notification0-dev zip unzip

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Pictures/Screenshots/

# Sway installation for Debian Bookworm
sudo apt install -y sway waybar swaylock swayidle swaybg swayimg xwayland wlogout swaykbdd

# Terminals
sudo apt install -y kitty tilix

# grim (screenshots in Wayland) and slurp (select a region in wayland) - kinda like scrot
sudo apt install -y grim slurp

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Browser Installation (eg. chromium)
# sudo apt install -y chromium firefox-esr

# dunst or mako
sudo apt install -y dunst unzip xdotool libnotify-dev

# Sound
sudo apt install -y pipewire pavucontrol pamixer

# Multimedia
sudo apt install -y mpv mpv-mpris pamixer ffmpeg qimgv gimp obs-studio redshift eog brightnessctl #nvtop

# nwg-look takes the place of lxappearance in x11 
# bash ~/debian/./golang.sh

# sudo apt install -y libgtk-3-dev libcairo2-dev libglib2.0-bin
# cd ~/Downloads
# wget https://github.com/nwg-piotr/nwg-look/archive/refs/tags/v0.2.7.zip
# unzip v0.2.7.zip
# cd nwg-look-0.2.7
# make build
# sudo make install
# cd ..
# rm -rf nwg-look-0.2.7
# rm v0.2.7.zip

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa

# Printing and bluetooth (if needed)
# sudo apt install -y cups system-config-printer simple-scan
# sudo apt install -y bluez blueman

# sudo systemctl enable cups
# sudo systemctl enable bluetooth

# PDF 
# sudo apt install -y evince pdfarranger

# Others
sudo apt install -y figlet galculator cpu-x udns-utils whois curl tree neofetch ranger htop wl-clipboard wev

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-font-awesome fonts-terminus papirus-icon-theme
bash ~/debian/./nerdfonts.sh


# Install SDDM Console Display Manager
sudo apt install --no-install-recommends -y sddm
sudo systemctl enable sddm


# wofi - confusingly similar to rofi
# sudo apt install wofi
# sudo apt install -y bison flex
# cd ~/Downloads
# git clone https://github.com/lbonn/rofi.git
# cd rofi
# meson setup build && ninja -C build
# sudo ninja -C build install
# cd ..
# rm -rf rofi

# .bashrc ~/.bashrc
# bash ~/debian/./alias.sh
# cd ~/
# source .bashrc
# Dunst
# alias hi="notify-send 'Hi there!' 'Welcome to my dwm desktop! ' -i ''"
# neofetch
