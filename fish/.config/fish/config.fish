set -x LANG en_US.UTF-8
#-------------------------------------------
# Disable fish greeting prompt
#-------------------------------------------
set -U fish_greeting

#-------------------------------------------
# Fish Config to replace ll and lla with exa
#-------------------------------------------
if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end


alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias ltt="eza --tree --level=2 --icons --git --long -s=modified -h --total-size --no-user --no-permissions"
alias ltree="eza --tree --level=2  --icons --git"
alias ls="eza --icons=always"

#-------------------------------------------

# Fish theme changes
# ---------------------
set -U fish_pager_color_selected_background --background='028'
#set fish_pager_color_selected_background --reversed
#

# ------------------------------------------
# Alias Commands for Fish
# ------------------------------------------
# Neovim Replaces Vim
alias vim=nvim
alias vi=nvim

# Replaces ls with eza

# Alias for Quitting Confirmation
alias quit="~/.dotfiles/scripts/confirm_quit_alacritty.fish"

# Bind Ctrl + g to Toggle Vim mode
bind \cg toggle_vi_mode

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# pnpm
set -gx PNPM_HOME /Users/darshana/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Set configurations for brew
# HOMEBREW_NO_INSTALL_CLEANUP = TRUE -> 
# Homebrew will no longer perform automatic 
# cleanup operations after installations
set -gx HOMEBREW_NO_INSTALL_CLEANUP TRUE

# Set Java Aliases
source ~/.config/fish/java_aliases.fish

# alias set - as nvim root
alias nvmc='cd ~/.config/nvim'

# Kitty toggle transperancy
function tkit
    /Users/darshana/.config/kitty/toggle_transperancy.fish
end

# Set Path for RubyEnv
set -gx PATH $HOME/.rbenv/bin $PATH
eval (rbenv init -|source)

set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/openssl@1.1/lib/pkgconfig:/opt/homebrew/opt/readline/lib/pkgconfig"
set -gx LDFLAGS (pkg-config --libs openssl readline)
set -gx CPPFLAGS (pkg-config --cflags openssl readline)

set -gx PATH $HOME/.flutter/fltter/bin $PATH

# Set Man Pager to nvim
export MANPAGER='nvim +Man!'

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/darshana/.lmstudio/bin

# LLVM Configs
set -gx LDFLAGS -L/opt/homebrew/opt/llvm/lib
set -gx CPPFLAGS -I/opt/homebrew/opt/llvm/include

set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/mysql@8.4/lib/pkgconfig"

# Set Startship Command Line
starship init fish | source

# Set zioxide
zoxide init --cmd z fish | source
