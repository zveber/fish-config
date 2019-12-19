function fish_prompt
    set updated (cat /var/pacman-updates|wc -l)
    if test $updated -gt 0
        set_color red
        printf "($updated) "
    end
    
    if set -q fish_private_mode
        set_color magenta --bold
        printf "P! "
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

