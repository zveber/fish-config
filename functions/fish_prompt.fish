function fish_prompt
    set updated (cat /var/pacman-updates|wc -l)
    if test $updated -gt 0
        set_color red
        echo -n "($updated) "
    end
    
    if set -q fish_private_mode
        set_color magenta
        printf "P! "
    end

    set_color green
    echo -n "$USER "

    set_color blue
    echo -n (prompt_pwd)

    set_color normal
    if test $USER = root
        echo -n " # "
    else
        echo -n " > "
    end
end

