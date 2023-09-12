#!/usr/bin/env bash

yay -S xdg-desktop-portal xdg-desktop-portal-hyprland \
hyprland swaylock-effects-git alacritty dunst \
waybar-hyprland wlogout rofi thunar{,-archive-plugin} \ --needed

echo 'Install config files...'
cp -r .config/ ~

echo 'Install themes files...'
cp -r .themes/ ~

echo 'Apply Dracula theme...'
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

echo 'Install icons files...'
cp -r .icons/ ~

echo 'Apply Tela Circle Icon...'
gsettings set org.gnome.desktop.interface icon-theme "Tela circle dracula"

echo 'Install fcitx5 theme...'
cp -r ./fcitx5 ~/.local/share
