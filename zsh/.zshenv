# Load .profile if exists.
[[ ! -f ~/.profile ]] || source ~/.profile

export EDITOR=/usr/bin/nvim
export BROWSER=microsoft-edge-stable
export TERMINAL=alacritty

# Set docker host
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

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

if [ -z "$SSH_AUTH_SOCK" ]; then
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]; then
        # Launch a new instance of the agent
        ssh-agent -s &> $HOME/.ssh/ssh-agent
   fi
   eval `cat $HOME/.ssh/ssh-agent`
fi

