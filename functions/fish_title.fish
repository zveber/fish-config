function fish_title
    if [ $_ = 'fish' ]
        if not test $USER = root
            printf '> '
        else
            printf '# '
        end
    else
        echo -n $argv[1]
    end
end

