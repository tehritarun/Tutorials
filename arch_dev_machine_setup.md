# Arch Development Machine Setup

## Virtualbox Setup (For Virtual box only)

``` bash
sudo pacman -S virtualbox-guest-utils
sudo systemctl enable --now vboxservice.service
VBoxClient --vmsvga
VBoxClient --display
```

## Packages

1. **Required tools**

- wl-clipboard
- xclip
- curl
- unzip
- tar
- gzip
- git
- wget

1. **Basic terminal**

- nvim
- ghostty
- kitty
- tmux

1. **Programming**

- go
- python
- uv
- ruff
- lazygit
- docker
- docker-compose
- docker-buildx
- lazydocker
- chromium

1. **Other usefull terminal apps**

- btop
- jq
- tree
- zoxide

1. **Desktop apps**

- localsend
- chromium
- obs-studio
- vscodium-bin

## Git Setup

- ### Git Config setup

``` bash
git config --global user.name "Tarun Tehri"
git config --global user.email "tehritarun@gmail.com"
```

- ### Generate SSH Key

``` bash
ssh-keygen -t ed25519 -C "tehritarun@gmail.com"
```

- ### Add public key to github

## ZSH Setup

- Find the current shell

``` bash
echo $SHELL
```

- Install zsh

``` bash
sudo pacman -S zsh
```

- Check zsh path and change shell

``` bash
which zsh
chsh -s $(which zsh)
```

- Run zsh using command `zsh`
- Reboot for shell change to take effect

- Clone zshrc config with poerlevel10k disabled

- Clone powerlevel10k

``` bash
cd ~/.config/zsh/plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git powerlevel10k
```

- Restart terminal and follow steps for prompt setup

- Create history file

``` bash
mkdir .local/share/zsh
touch .local/share/zsh/histor
```

## Docker Setup

- Create new group docker

``` bash
sudo groupadd docker
```

- Add user to docker group

``` bash
sudo usermod -aG docker $USER
```

- Logout and log back in or run following to load new group setting

``` bash

newgrp docker
```

## Tmux Setup

- Install tmux

``` bash
sudo pacman -S zsh
```

- TPM install

``` bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Yay Setup

- Install required depandencies

``` bash
sudo pacman -S --needed git base-devel\n
```

- Clone yay repositories

``` bash
cd ~/Downloads\ngit clone https://aur.archlinux.org/yay.git
```

- cd into directory and make package

``` bash
cd yay
makepkg -si
```

- Install Required GUI apps

``` bash
yay -S vscodium-bin
yay -S obs-studio
```
