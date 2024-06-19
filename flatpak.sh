#!/bin/sh

sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Flatpak Tools
flatpak install -y flathub io.github.flattool.Warehouse
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub io.github.giantpinkrobots.flatsweep
# Utilities
flatpak install -y flathub com.github.hluk.copyq
# Browser
flatpak install -y flathub com.google.Chrome
flatpak install -y flathub com.microsoft.Edge
# Communication
flatpak install -y flathub com.discordapp.Discord
# Virtualization - Simulation 
flatpak install -y flathub org.gnome.Boxes
flatpak install -y flathub com.usebottles.bottles
flatpak install -y flathub net.lutris.Lutris
# Developing
flatpak install -y flathub com.visualstudio.code
flatpak install -y flathub com.axosoft.GitKraken
# flatpak install -y flathub com.jetbrains.PyCharm-Professional
# flatpak install -y flathub com.jetbrains.WebStorm
# flatpak install -y flathub com.jetbrains.PhpStorm
# flatpak install -y flathub com.jetbrains.DataGrip
# flatpak install -y flathub com.jetbrains.GoLand