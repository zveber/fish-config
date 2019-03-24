function ytdl
	youtube-dl -f 'best[height<=360]' $argv
end
