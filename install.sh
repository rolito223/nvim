#!bin/bash

echo "Installing Nodejs"

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

echo "Installing Neovim, cloning repo and installing plugins"

git clone https://github.com/rolito223/nvim.git ~/.config/nvim &&\ 

mkdir ~/.local/bin

wget -P ~/.local/bin/ https://github.com/neovim/neovim/releases/download/v0.9.0/nvim.appimage 

export $PATH=$PATH:~/.local/bin

ln -n ~/.local/bin/nvim.appimage ~/.local/bin/nvim

sudo chmod +x ~/.local/bin/nvim

nvim --headless +PackerInstall +qall

echo "Now run ':Copilot setup' in nvim and it's ready to go!"
