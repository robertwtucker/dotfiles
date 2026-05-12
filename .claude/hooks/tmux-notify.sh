#!/bin/bash
# Only wrap for tmux
[ -z "$TMUX" ] && exit 0
read -r input
message=$(echo "$input" | jq -r '.message // "Claude Code"')

# Send the notification sequence wrapped for tmux passthrough
printf '\033Ptmux;\033\033]9;%s\007\033\\' "$message" >/dev/tty
