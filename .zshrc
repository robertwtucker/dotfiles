# slimzsh
source "$HOME/.slimzsh/slim.zsh"

for file in ~/.{extra,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file