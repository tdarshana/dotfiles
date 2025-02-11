# My Dotfiles Configuration

## Configuration Restore for MacOS

**How to manage configurations manually**

```shell
# Alacritty
ln -s ~/.dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

# Atuin
ln -s ~/.dotfiles/atuin/config.toml ~/.config/atuin/config.toml

# Bat
ln -s ~/.dotfiles/bat ~/.config/bat

# Fish
ln -s ~/.dotfiles/fish ~/.config/fish

# Kitty
ln -s ~/.dotfiles/kitty ~/.config/kitty

# NVim
ln -s ~/.dotfiles/nvim ~/.config/nvim

# Tmux
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

# WezTerm
ln -s ~/.dotfiles/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua

# Zed
ln -s ~/.dotfiles/zed/settings.json ~/.config/zed/settings.json

```

**How to manage configurations with [GNU Stow](https://www.gnu.org/software/stow)**

```shell
cd ~/.dotfiles
stow alacritty
stow atuin
stow bat
stow fish
stow kitty
stow nvim
stow scripts
stow tmux
stow wezterm
stow zed
```

Each stow command creates symlinks from the files in the specified subdirectory to the corresponding locations in your home directory.
