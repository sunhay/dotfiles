feh --bg-tile ~/dotfiles/dwm/wallpaper.png
xrdb -merge ~/.Xresources
xrandr --output DVI-0 --auto --right-of VGA-0
exec dwm
