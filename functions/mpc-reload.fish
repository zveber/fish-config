function mpc-reload
    mpc -q update --wait
    mpc -q clear
    mpc -q add /
    mpc play
    rm ~/.config/mpd/playlists/library.m3u
    mpc save library
end
