function findword
	grep $argv[1] /usr/share/dict/cracklib-small | less
end
