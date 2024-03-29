# neovim

neovim configuration for my personal usage

## install
current local version v0.9.5
```bash
# download
mkdir ~/.nvim && cd ~/.nvim
sudo wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
sudo tar -xzvf nvim-linux64.tar.gz

# add this line to ~/.bashrc
export PATH=$PATH:/home/bogi/nvim-linux64/bin
```

#### lsp's
> you can install lsp's directly or using Mason
```bash
# npm packages; node version 20.10.0
npm i -g vim-language-server \
    typescript \
    typescript-language-server \
    sql-language-server \
    @microsoft/compose-language-service \
    dot-language-server \
    emmet-ls \
    vscode-langservers-extracted \
    yarn \
    dockerfile-language-server-nodejs \
    pyright \
    @ansible/ansible-language-server

# yarn packages
yarn global add yaml-language-server

# go packages; go version 1.21.5
go install golang.org/x/tools/gopls@latest
go install github.com/nametake/golangci-lint-langserver@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
go install github.com/wader/jq-lsp@master
go install github.com/dagger/cuelsp/cmd/cuelsp@latest
vim ~/.bashrc # add this line: "export PATH=$PATH:/home/bogi/go/bin"

# pip packages; python version: 3.10, pip version:22.0.2
pip install -U nginx-language-server

# apt packages
sudo apt install terraform-ls

# binaries
mkdir ~/.luals cd ~/.luals
wget https://github.com/LuaLS/lua-language-server/releases/download/3.7.3/lua-language-server-3.7.3-linux-x64.tar.gz
sudo tar -xzvf lua-language-server-3.7.3-linux-x64.tar.gz
vim ~/.bashrc # add this to line: "export PATH=$PATH:/home/bogi/.luals/bin"
```

#### config
```bash
cd ~/.config && git clone git@github.com:bgdn-r/nvim.git
```
