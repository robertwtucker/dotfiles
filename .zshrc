#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# Shell personalization
for file in ~/.{extra,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file
