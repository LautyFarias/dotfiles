# Load .profile.
[[ ! -f ~/.profile ]] || source ~/.profile

export EDITOR=/usr/bin/nvim
export BROWSER=microsoft-edge-beta
export TERMINAL=alacritty

# Set $PATH if ~/.local/bin exist.
[[ -d "$HOME/.local/bin" ]] && export PATH=$HOME/.local/bin:$PATH

# Set pyenv config.
# if [ -d "$HOME/.pyenv" ]; then
#   export PYENV_ROOT="$HOME/.pyenv"
#   command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

#   eval "$(pyenv init -)"
# fi

# Set poetry bin.
[[ -d "$HOME/.poetry/bin" ]] && export PATH="$HOME/.poetry/bin:$PATH"

# Set composer bin.
[[ -d "$HOME/.config/composer/vendor/bin" ]] && export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Set arkade bin.
[[ -d "$HOME/.arkade/bin" ]] && export PATH="$HOME/.arkade/bin:$PATH"

# Set custom commands.
export PATH="$HOME/.bin:$PATH"
