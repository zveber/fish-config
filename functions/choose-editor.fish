#!/usr/bin/fish
function choose-editor
    if set -q DISPLAY
        command kwrite $argv
    else
        command vim $argv
    end
end
