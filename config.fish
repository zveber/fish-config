# disable searching with pacman
function __fish_command_not_found_handler --on-event fish_command_not_found
    echo "fish: Unknown command '$argv'"
end

# set colors
set fish_color_autosuggestion normal --dim
set fish_color_command blue --bold
set fish_color_command_error red --bold
set fish_color_error red --bold
set fish_color_operator green --bold
set fish_color_param normal
set fish_color_redirection magenta bold
set fish_pager_color_completion blue --bold
set fish_pager_color_description green --bold
set fish_pager_color_prefix black

# set envuronment variables
set -x PAGER most
set -x SYSTEMD_PAGER 'less --clear-screen'
set -x LESS "--raw-control-chars  --clear-screen --IGNORE-CASE --chop-long-lines"
set -p fish_user_paths $HOME/.local/bin
