#bin/bash

#Make directories to put the configs in
mkdir -p $HOME/.config/i3
mkdir -p $HOME/.config/polybar

#Move i3 config
mv config.i3 $HOME/.config/i3/config

#Move polybar config
mv config.polybar $HOME/.config/polybar/config

#Make poybar start script executable and move it
chmod a+x start.sh
mv start.sh $HOME/.config/polybar/

#Messages
echo "Nitrogen is configured to restore the previous setup, but a setup needs to be made for restoration. In other words, set a wallpaper manually and Nitrogen will automatically restore it."
echo "Extra configuration can be done with compton by adding additional flags (such as --active-opacity for the opacity of and active window) to the line in ~/.config/i3/config." 
echo "Polybar uses the bar 'example,' but it is heavily altered. Module underline colors can be changed by changing the html color code associated with the line 'format-underline =' for each of the modules in ~/.config/polybar/config."
