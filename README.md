# dotfiles
My os dotfiles and configurations

## Steps

### Install BitWarden and GitHub CLI

#### example in Mac OS

```bash
brew install gh
```

> ℹ️ Install Bitwarden from the App Store.

#### example in Arch-based distro

```bash
yay -S bitwarden github-cli
```

#### example in Debian-based distro

Install BitWarden from the [official site](https://vault.bitwarden.com/download/?app=desktop&platform=linux) and install GitHub CLI using the [official source](https://github.com/cli/cli/blob/trunk/docs/install_linux.md#debian-ubuntu-linux-raspberry-pi-os-apt)

### Log in GitHub CLI
```bash
gh auth login
```

### Clone dotfiles repository

```bash
gh repo clone LautyFarias/dotfiles
```

### Finally

Run shell commands using `make` or find more useful packages in your package manager folder:

[__brew__](brew/README.md)