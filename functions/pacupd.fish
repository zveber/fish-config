function pacupd
    set log_dir /var/tmp/pacman
    set log_file $log_dir/(date +%m%d-%H%M).log
    if not test -d $log_dir
        mkdir $log_dir
    else
        touch $log_dir
    end
    pacman -Suu | tee $log_file
    pacman -Qu > /var/pacman-updates
end
