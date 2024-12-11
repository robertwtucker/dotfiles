# ZSH configuration
export ZSH="${HOME}/.oh-my-zsh"

if [ ! -d "${ZSH}" ]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    if [ -e ${HOME}/.zshrc.pre-oh-my-zsh ]; then
      mv -f "${HOME}/.zshrc.pre-oh-my-zsh" "${HOME}/.zshrc"
    fi
fi

ZSH_THEME="minimal"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(git kubectl sudo vi-mode)

source "${ZSH}/oh-my-zsh.sh"

# User configuration
for file in ~/.{exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file
