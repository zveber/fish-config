function fish_title
    if test $_ = 'fish'
        printf (prompt_pwd)
    else
        printf  $argv[1]
    end
end

