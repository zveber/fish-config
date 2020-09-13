function fish_title
    if [ $_ = 'fish' ]
        printf (prompt_pwd)
    else
        echo -n $argv[1]
    end
end

