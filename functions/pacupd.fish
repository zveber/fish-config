function pacupd
	sudo pacman -Suuy | tee /var/tmp/pacman-(date +%m%d-%H%M).log
end
