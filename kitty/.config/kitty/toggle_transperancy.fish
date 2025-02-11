#!/opt/homebrew/bin/fish
if grep -q 'background_opacity 0.9' ~/.config/kitty/kitty.conf
    sed -i '' 's/background_opacity 0.9/background_opacity 1.0/g' ~/.config/kitty/kitty.conf
    echo "Transparency is off, reload kitty config to apply changes!"
else if grep -q 'background_opacity 1.0' ~/.config/kitty/kitty.conf
    sed -i '' 's/background_opacity 1.0/background_opacity 0.9/g' ~/.config/kitty/kitty.conf
    echo "Transparency is on, reload kitty config to apply changes!"
else
    echo "Unable to change the opacity, there is no background_opacity in kitty.conf..."
end
