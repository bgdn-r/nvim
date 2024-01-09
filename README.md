# neovim

## install
current local version v0.9.5
```bash
# download
mkdir ~/.nvim && cd ~/.nvim
sudo wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
sudo tar xzvf nvim-linux64.tar.gz

# add this line to ~/.bashrc
export PATH=$PATH:/home/bogi/nvim-linux64/bin
```

## clone
```bash
mkdir ~/.config/nvim && cd ~/.config/nvim
git clone git@github.com:bgdn-r/neovim.git
mv neovim/* .
```

Install [packer.nvim](https://github.com/wbthomason/packer.nvim)

Copy contents from this repository to `~/.config/nvim/`
