function fish_prompt
    if test -f /var/pacman-updates
        set updated (cat /var/pacman-updates|wc -l)
        if test $updated -gt 0
            set_color red
            printf "($updated) "
        end
    end
    
    if set -q fish_private_mode
        set_color black --background red
        printf "P!"
        set_color --background normal
        printf " "
    end

    if test $USER = root
        set_color  --bold red
    else
        set_color --bold green
    end
    printf "$USER "

    set_color blue
    printf (prompt_pwd)

    set_color normal
    if test $USER = root
        printf " # "
    else
        printf " > "
    end
end

