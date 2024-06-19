#!/bin/sh

sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y com.github.hluk.copyq
flatpak install -y com.github.tchx84.Flatseal
flatpak install -y com.google.Chrome
flatpak install -y com.microsoft.Edge
flatpak install -y com.visualstudio.code
