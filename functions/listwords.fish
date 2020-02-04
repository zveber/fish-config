function listwords
    grep $argv[1] "/usr/share/dict/cracklib-small" | $PAGER
end
