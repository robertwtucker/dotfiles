#!/bin/bash

set -eu

# Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	[[ -f ".zshrc.pre-oh-my-zsh" ]] && mv ".zshrc.pre-oh-my-zsh" ".zshrc"
fi

# powerlevel10k Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Oh My Zsh ✅"
