echo "Installing Nodejs"

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs libfuse2

echo "Installing Neovim, cloning repo and installing plugins"

git clone https://github.com/rolito223/nvim.git ~/.config/nvim

if [ ! -d ~/.local/bin ]; then
	mkdir ~/.local/bin
fi

wget -P ~/.local/bin/ https://github.com/neovim/neovim/releases/download/v0.10.1/nvim.appimage 

export PATH=~/.local/bin:$PATH

ln -n ~/.local/bin/nvim.appimage ~/.local/bin/nvim

sudo chmod +x ~/.local/bin/nvim

nvim --headless +PackerInstall +qall

echo "Now open NeoVim, run ':PackerInstall' and ':Copilot setup' and it's ready to GO!"
