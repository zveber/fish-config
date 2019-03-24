function cropv
  	  reencode --crop $argv[2] $argv[3] --vcodec libx264 --acodec aac $argv[1]
    set cmd "mencoder -ss $argv[2] -endpos $argv[3] -oac copy -ovc copy -o out -of lavf $argv[1]"
    #eval $cmd
end
