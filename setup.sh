#!/bin/bash

set -e

echo ":_: Linking dotfiles..."

# Symlinks
ln -sf ~/dotfiles/i3 ~/.config/i3
ln -sf ~/dotfiles/polybar ~/.config/polybar

echo ":) Symlinks created."

echo "> Installing essential packages..."
sudo pacman -S --needed - < ~/dotfiles/pkglist.txt


echo ":) Pacakges installed"

feh --bg-scale ~dotfiles/wallpapers/default.png


echo ":) All done! You may want to reload i3 (Mod+Shift+R)"
