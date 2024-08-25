#!/bin/bash
echo "==> Installing required packages..."
sudo pacman -Sq --noconfirm hyprland alacritty waybar fish git base-devel
echo "==> Installing yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
echo "==> Installing more required packages..."
yay -Sq --noconfirm nitch neovim starship neovide swww swayosd cava starship rofi-wayland wezterm-git nwg-dcok-hyprland
echo "==> Installing plugins..."
hyprpm update
hyprpm add https://github.com/hyprwm/hyprland-plugins
hyprpm enable hyprexpo
hyprpm enable hyprtrails
hyprpm enable hyprbars
echo "==> Planting dotfiles..."
git clone https://github.com/starsprinter92/hyprdots/
cd hyprdots
cp -r config/* ~/.config/
echo "==> Additional setup..."
chmod +x ~/.config/hypr/autostart
echo "==> Installation done. Please restart."
exit
