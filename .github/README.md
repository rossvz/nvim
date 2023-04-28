# Install AstroNvim and Clone this user config

## Prerequisites
- Neovim
  - MacOS: `brew install neovim`
- ASDF
- Elixir / Erlang via ASDF

```shell
# create a backup of current neovim config
mv ~/.config/nvim ~/.config/nvim_backup

# Instal AstroNvim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Clone this repo into user config
git clone https://github.com/rossvz/nvim ~/.config/nvim/lua/user

# open neovim
nvim
```

