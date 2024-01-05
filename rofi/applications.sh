# Options for Applications Menu
code="  VS-Code "
browser="󰥧  Firefox "
terminal="  Kitty "
files="󰪶  Ranger "
monitor="  Htop "
minecraft="󰍳  Minecraft "

selected_option=$(echo "$browser
$code
$terminal
$files
$monitor
$minecraft" | rofi -dmenu\
                        -i\
			-p "Applications"\
		        -config "~/.config/rofi/applicationsmenu.rasi"\
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
    code

elif [ "$selected_option" == "$terminal" ]
then
    kitty

elif [ "$selected_option" == "$files" ]
then
    kitty -e ranger

elif [ "$selected_option" == "$monitor" ]
then
    kitty -e htop

elif [ "$selected_option" == "$minecraft" ]
then
    minecraft-launcher

 
else 
    echo "No Match"

fi 
