#!/bin/env bash

# Options for Applications Menu
code="󰅳  Sublime-Text "
browser="󰈹  Firefox "
terminal="  Kitty "
files="󰪶  Ranger "
monitor="  Htop "
editor="󱩽  Gedit "

selected_option=$(echo "$browser
$code
$terminal
$files
$monitor
$editor" | rofi -dmenu\
                        -i\
			-p "Applications"\
		        -config "/usr/share/rofi/themes/applicationsmenu.rasi"\
		        -font "Cascadia Code 13"\
		        -width "1000"\
		        -lines 5\
		        -line-margin 3\
		        -line-padding 100\
		        -scrollbar-width "0" )

if [ "$selected_option" == "$browser" ]
then
    firefox

elif [ "$selected_option" == "$code" ]
then 
    subl

elif [ "$selected_option" == "$terminal" ]
then
    kitty

elif [ "$selected_option" == "$files" ]
then
    kitty -e ranger

elif [ "$selected_option" == "$monitor" ]
then
    kitty -e htop

elif [ "$selected_option" == "$editor" ]
then
    gedit

else 
    echo "No Match"

fi 
