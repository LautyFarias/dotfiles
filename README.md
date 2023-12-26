# dotfiles
My os dotfiles and configurations

## Steps

Install BitWarden and GitHub CLI

__example in Arch-based distro__

```bash
yay -S bitwarden github-cli
```

__example in Debian-based distro__

Install BitWarden from the [official site](https://vault.bitwarden.com/download/?app=desktop&platform=linux) and install GitHub CLI using the [official source](https://github.com/cli/cli/blob/trunk/docs/install_linux.md#debian-ubuntu-linux-raspberry-pi-os-apt)

Log in GitHub CLI
```bash
gh auth login
```

Clone dotfiles repository

```bash
gh repo clone LautyFarias/dotfiles
```
