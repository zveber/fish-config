function fish_prompt
    if test -f /var/pacman-updates
        set updated (cat /var/pacman-updates|wc -l)
        if test $updated -gt 0
            set_color red
            printf "($updated) "
        end
    else
        set_color red
        printf "\u00b7 "
    end
    
    if set -q fish_private_mode
        set_color black --background red
        printf "P!"
        set_color --background normal
        printf " "
    end

    set_color green
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

