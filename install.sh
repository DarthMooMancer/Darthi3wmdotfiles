#!/bin/bash
#
echo "Firstly Updating the System"
sudo pacman -Syu
sudo rm -rd autotiling

echo ""
echo " Installing"
echo ""

sudo pacman -S git i3-wm i3status i3lock rofi kitty neofetch ttf-font-awesome otf-font-awesome wget pulseaudio pulseaudio-jack pulseaudio-alsa pavucontrol python-pywal vim zsh brightnessctl

echo "Base Packages installed"

git clone https://aur.archlinux.org/autotiling.git
cd autotiling
makepkg -si

echo "AutoTiling Installed"

echo ""
echo "Removing Folders that break install"
echo ""

sudo rm -rd ~/.config/rofi
sudo rm -rd ~/.config/i3
sudo rm -rd ~/.config/neofetch
sudo rm -rd ~/.config/kitty
sudo rm -rf ~/.zshrc
sudo rm -rf ~/.bash_profile
echo ""
echo "Cloning and Setup"
echo ""

cd Darthi3wmdotfiles

sudo rm -rf /etc/mkinitcpio.conf
sudo mv ~/Darthi3wmdotfiles/mkinitcpio.conf /etc/
sudo mkinitcpio -p linux

mkdir ~/.config/i3
mv ~/Darthi3wmdotfiles/i3/config ~/.config/i3/
mv ~/Darthi3wmdotfiles/i3/i3status.conf ~/.config/i3/

mkdir ~/.config/kitty
mv ~/Darthi3wmdotfiles/kitty/kitty.conf ~/.config/kitty/
cp -r neofetch ~/.config
cp -r rofi ~/.config
cp -r Wallpapers ~/
mv .bash_profile ~/
cp -r wal ~/.cache/

cp -r zsh ~/
cd ~/zsh
mv .zshrc ~/

echo ""
echo "Finished... Now Cleaning"
echo ""

pacman -Qqtd
pacman -Qqd | pacman -Rsu --print -
pacman -Qtdq | sudo pacman -Rns -

echo ""
echo "Theming"
echo ""

wal -i ~/Wallpapers/aquarium.png

echo "Run <windows-key>+<shift>+<r>"
echo "Add "Wal -R" to bottom of xorg_profile to keep theme after restart"
