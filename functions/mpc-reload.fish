function mpc-reload
    mpc -q update --wait
    mpc -q clear
    mpc -q add /
    mpc play
end
