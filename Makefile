install:
	@./setup.sh

link:
	@ln -sf ~/dotfiles/i3 ~/.config/i3
	@ln -sf ~/dotfiles/polybar ~/.config/polybar

packages:
	sudo pacman -S --needed - < ~/dotfiles/pkglist.txt --noconfirm

update:
	@git add .
	@git commit -m "update dotfiles"
	@git push

pull:
	@git pull
