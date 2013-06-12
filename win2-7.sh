#!/bin/sh

# Styling your ubuntu to look like a win7.

sudo add-apt-repository ppa:upubuntu-com/gtk3
sudo apt-get update
sudo apt-get install win2-7

gsettings set org.gnome.desktop.interface gtk-theme 'Win2-7-theme'
gconftool-2 --set --type string /apps/metacity/general/theme 'Win2-7-theme'
gsettings set org.gnome.desktop.interface icon-theme 'Win2-7-icons'

gconftool-2 --set /apps/metacity/general/button_layout \
		 --type string "menu:minimize,maximize,close"

