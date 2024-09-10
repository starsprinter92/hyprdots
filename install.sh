#!/bin/bash
echo "==> Installing required packages..."
sudo pacman -Sq --noconfirm hyprland alacritty waybar fish git base-devel
echo "==> Installing paru..."
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
echo "==> Installing more required packages..."
paru -Sq --noconfirm nitch neovim starship neovide swww swayosd cava starship rofi-wayland wezterm-git grimblast-git gpu-screen-recorder hyprpicker matugen-bin python-gpustat aylurs-gtk-shell-git pipewire bluez bluez-utils btop networkmanager dart-sass wl-clipboard brightnessctl swww python gnome-bluetooth-3.0 waybar tofi openbox tint2 bspwm picom-ftlabs-git polybar swayosd
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
