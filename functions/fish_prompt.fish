function fish_prompt
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set updated (cat /var/pacman-updates|wc -l)
    if test $updated -gt 0
        set_color red
        echo -n "($updated)"
    end
    set_color normal
    echo -n ' > '
end

