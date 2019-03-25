function fish_title
    if [ $_ = 'fish' ]
        echo -n 'fisn>'
    else
        echo -n $argv[1]
    end
end

