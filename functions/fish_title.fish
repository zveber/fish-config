function fish_title
    if test $_ = 'fish'
        set content (prompt_pwd)
    else
        set content $argv[1]
    end
    printf "%s @ %s"  $content (hostname)
end

