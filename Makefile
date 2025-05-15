install:
	@./setup.sh

link:
	@ln -sf ~/dotfiles/i3 ~/.config/i3
	@ln -sf ~/dotfiles/polybar ~/.config/polybar

packages:
	sudo pacman -Syu --needed i3-wm polybar picom kitty dmenu nerd-fonts jetbrains-mono-nerd ttf-font-awesome unzip git base-devel --noconfirm

update:
	@git add .
	@git commit -m "update dotfiles"
	@git push

pull:
	@git pull
