#!/bin/bash
#
echo "Firstly Updating the System"
sudo pacman -Syu
sudo rm -rd autotiling

echo ""
echo " Installing"
echo ""

<<<<<<< HEAD
sudo pacman -S git i3-wm i3status i3lock rofi kitty neofetch ttf-font-awesome otf-font-awesome wget pulseaudio pulseaudio-jack pulseaudio-alsa pavucontrol python-pywal vim zsh
=======
sudo pacman -S git zsh i3-wm i3status i3lock rofi kitty neofetch ttf-font-awesome otf-font-awesome wget pulseaudio pulseaudio-jack pulseaudio-alsa pavucontrol python-pywal
>>>>>>> c74a873d6144a291a73b8549982f16f49cd9d2b4

echo "Base Packages installed"

git clone https://aur.archlinux.org/autotiling.git
cd autotiling
makepkg -si

echo "AutoTiling Installed"

cd 

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo "Oh-My-Zsh Installed"

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
cp -r i3 ~/.config
cp -r kitty ~/.config
cp -r neofetch ~/.config
cp -r rofi ~/.config
cp -r Wallpapers ~/
mv .bash_profile ~/

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
