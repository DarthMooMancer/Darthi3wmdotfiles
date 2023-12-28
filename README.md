![desktop](https://github.com/DarthMooMancer/Darthi3wmdotfiles/assets/107283522/b505c044-f91a-40ff-a181-b4a9bf5b787f)
![desktop1](https://github.com/DarthMooMancer/Darthi3wmdotfiles/assets/107283522/b4f9282d-10eb-4664-8e5b-c8330417b13f)
![desktop2](https://github.com/DarthMooMancer/Darthi3wmdotfiles/assets/107283522/8dbd78cd-3ec8-4b3f-9024-52346c7e0d47)

This dotfiles is meant for the ease of someone wanting a base or is just lazy (me). 

This is meant for arch linux only and i3wm
This is the first version of the config so there will be changes to how it is installed and looks
______________________________________________________________________________________________
Packages needed:

- oh-my-zsh and wget for installing
- git
- i3wm
- i3status
- i3lock
- rofi
- kitty
- neofetch
- autotiling #https://aur.archlinux.org/autotiling.git
- ttf-font-awesome and otf-font-awesome
- pulseaudio / jack / alsa / pavucontrol
- pywal
______________________________________________________________________________________________

Installing:
==============================================================================================
base packages:

sudo pacman -Syu
sudo pacman -S git i3wm i3status i3lock rofi kitty neofetch ttf-font-awesome otf-font-awesome wget pulseaudio pulseaudio-jack pulseaudio-alsa pavucontrol python-pywal
______________________________________________________________________________________________
autotiling package:

git clone https://aur.archlinux.org/autotiling.git
cd autotiling
makepkg -si
______________________________________________________________________________________________
ohmyzsh package:

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

----------------------------------------------------------------------------------------------  
- [Needed for application menu but can be removed if not wanted.]
  ============================================================================================
- Go to cloned directory and vim or nano into the rofi/applications.rasi and remove everything acknowledging the app not wanted
- 
  - Ranger
  - Htop
  - Sublime Text 4
  - firefox
  - gedit
----------------------------------------------------------------------------------------------

How to use:
----------------------------------------------------------------------------------------------
Step 1:
git clone https://github.com/DarthMooMancer/Darthi3wmdotfiles.git
cd Darthi3wmdotfiles
stow */ #If this doesnt work follow the next step

Step 2:
#If there is already configs for these use sudo rm -rd to remove the folder, but firstly back your folder up back it
 - sudo cp -r ~/Darthi3wmdotfiles/<foldername> ~/.config/
 - then refresh i3 with mod+shift+r

Step 3:
run wal -i <locationofwallpaper>
add wal -R to xorg_profile

Step 4:
NightTab.json is for the extension of nightTab on firefox
Change my name to yours in the settings of nighttab

-------------------------------------------------
