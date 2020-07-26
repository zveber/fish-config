# restore tmux session or start a new one
if not set -q TMUX
    tmux attach
else
    tmux new
end
