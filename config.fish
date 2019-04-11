# disable searching with pacman
function __fish_command_not_found_handler --on-event fish_command_not_found
    echo "fish: Unknown command '$argv'"
end

# set colors
set -x fish_color_param black
set -x fish_color_command_error red --bold
set -x fish_color_command blue --bold

# set envuronment variables
set -x PAGER most
set -px fish_user_paths $HOME/.local/bin

# restore tmux session or start a new one
if not set -q TMUX
    tmux attach || tmux new
end

