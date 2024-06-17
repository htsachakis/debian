#!/bin/sh

# Dependencies
sudo apt install -y build-essential cmake cmake-extras curl gettext libnotify-bin light meson ninja-build libxcb-util0-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-cursor-dev libxcb-xinerama0-dev libstartup-notification0-dev zip unzip

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

# Sway installation for Debian Bookworm
sudo apt install -y sway waybar swaylock swayidle swaybg

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
sudo apt install -y chromium

# dunst or mako
sudo apt install -y dunst unzip xdotool libnotify-dev

# Sound
sudo apt install -y pipewire pavucontrol pamixer

# Multimedia
sudo apt install -y mpv mpv-mpris nvtop pamixer ffmpeg qimgv gimp obs-studio redshift eog brightnessctl

# nwg-look takes the place of lxappearance in x11 
sudo apt install -y golang libgtk-3-dev libcairo2-dev libglib2.0-bin
cd ~/Downloads
wget https://github.com/nwg-piotr/nwg-look/archive/refs/tags/v0.2.7.zip
unzip v0.2.7.zip
cd nwg-look-0.2.7
make build
sudo make install
cd ..
rm -rf nwg-look-0.2.7
rm v0.2.7.zip

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
sudo apt install -y figlet galculator cpu-x udns-utils whois curl tree neofetch

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-font-awesome fonts-terminus papirus-icon-theme
mkdir -p ~/.local/share/fonts

cd /tmp
fonts=( 
"CascadiaCode"
"FiraCode"  
"Hack"  
"Inconsolata"
"JetBrainsMono" 
"Meslo"
"Mononoki" 
"RobotoMono" 
"SourceCodePro" 
"UbuntuMono"
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/$font.zip
	unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done
fc-cache

# Install SDDM Console Display Manager
# sudo apt install --no-install-recommends -y sddm
# sudo systemctl enable sddm


# wofi - confusingly similar to rofi
# sudo apt install wofi
sudo apt install -y bison flex
cd ~/Downloads
git clone https://github.com/lbonn/rofi.git
cd rofi
meson setup build && ninja -C build
sudo ninja -C build install
cd ..
rm -rf rofi


# .bashrc ~/.bashrc
# Aliases
# alias ..='cd ..' 
# alias ...='cd ../..' 
# alias install='sudo apt install'
# alias update='sudo apt update'
# alias upgrade='sudo apt upgrade'
# alias uplist='apt list --upgradable'
# alias remove='sudo apt autoremove'
# alias l='exa -ll --color=always --group-directories-first'
# alias ls='exa -al --header --icons --group-directories-first'
# alias df='df -h'
# alias free='free -h'
# alias myip="ip -f inet address | grep inet | grep -v 'lo$' | cut -d ' ' -f 6,13 && curl ifconfig.me && echo ' external ip'"
# alias x="exit"
# # Git aliases
# alias gp="git push -u origin main"
# alias gsave="git commit -m 'save'"
# alias gs="git status"
# alias gc="git clone"
# alias tr="tree"

# Dunst
# alias hi="notify-send 'Hi there!' 'Welcome to my dwm desktop! ' -i ''"
# neofetch
