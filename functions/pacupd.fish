function pacupd
	sudo pacman -Suu | tee /var/tmp/pacman-(date +%m%d-%H%M).log
end
