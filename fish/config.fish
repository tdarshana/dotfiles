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

# LS Replaces EZA
alias ls="eza --icons=always"

# Alias for Quitting Confirmation
alias quit="~/.dotfiles/scripts/confirm_quit_alacritty.fish"

# VSCodium to Code
#alias code=codium

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

# zioxide
zoxide init fish | source

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
