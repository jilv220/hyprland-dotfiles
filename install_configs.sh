#!/usr/bin/env bash

yay -S xdg-desktop-portal xdg-desktop-portal-hyprland \
hyprland swaylock-effects-git alacritty dunst \
waybar-hyprland wlogout rofi thunar{,-archive-plugin} \ --needed

echo 'Install config files...'
cp -r .config/ ~

echo 'Install fcitx5 theme...'
cp -r ./fcitx5 ~/.local/share