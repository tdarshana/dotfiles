# ~/.dotfiles/scripts/confirm_quit.fish
echo -n "Are you sure you want to quit? (y/n) "
read -l answer
if test "$answer" = y -o "$answer" = Y
    exit
end
