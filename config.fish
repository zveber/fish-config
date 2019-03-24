#set -U fish_user_paths /home/andrew/.local/bin $fish_user_paths

# disable searching with pacman
function __fish_command_not_found_handler --on-event fish_command_not_found
    echo "fish: Unknown command '$argv'"
end

set -x fish_color_param 001010
set -x fish_color_command_error red --bold

