# Load .profile if exists.
[[ ! -f ~/.profile ]] || source ~/.profile

export EDITOR=/usr/bin/nvim
export BROWSER=microsoft-edge-stable
export TERMINAL=alacritty

# Set $PATH if ~/.local/bin exists.
[[ -d "~/.local/bin" ]] && export PATH=~/.local/bin:$PATH

# Set pyenv config.
if [ -d "~/.pyenv" ]; then
  export PYENV_ROOT="~/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

  eval "$(pyenv init -)"
fi

# Set poetry bin.
[[ -d "~/.poetry/bin" ]] && export PATH="~/.poetry/bin:$PATH"
