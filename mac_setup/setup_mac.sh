!#/bin/bash

## Install and setup Homebrew
echo " --------------------INSTALLING HOMEBREW--------------------- "

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Installing programs using homebrew
echo " -------------INSTALLING PROGRAMS USING HOMEBREW------------- "

brew install git lazygit git uv ruff neovim golang tree btop bat fzf jq jless zoxide yazi tmux stow
brew install --cask obs-studio localsend visual-studio-code docker ghostty font-fira-code-nerd-font

# Setting up gitconfig
echo " --------------------SETTING UP GITCONFIG-------------------- "

git config --global user.name "Tarun Tehri"
git config --global user.email "tehritarun@gmail.com"


# setting ssh key for github
echo " -----------------SETTING SSH KEY FOR GITHUB----------------- "

ssh-keygen -t ed25519 -C "tehritarun@gmail.com"
pbcopy < ~/.ssh/id_ed25519.pub

echo "SSH public key is copied to clipboard. please go to url and finish setup."
echo "https://github.com/settings/keys"
echo "..."
echo "Once done please press enter to continue"
read -r VAR

# installing TPM
echo " -----------------------INSTALLING TPM----------------------- "
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


# setting up dotfiles
echo " --------------------SETTING UP DOTFILES--------------------- "
cd ~
git clone git@github.com:tehritarun/dotfiles.git
cd dotfiles
stow zsh
stow tmux
stow yazi


# Setting tmux-sess
echo " ---------------------SETTING TMUX-SESS---------------------- "
mkdir ~/projects
cd ~/projects

git clone git@github.com:tehritarun/tmux-sess.git
cd tmux-sess
./setup.sh
source ${ZDOTDIR:-$HOME}/.zshrc

echo " Please go to dotfiles and run setup for VSCode "
