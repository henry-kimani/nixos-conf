img_loc=$HOME/CS/config/assets/i3lock.png
echo hello

# magick $img_loc -scale 10% -scale 1000% $img_loc
magick $img_loc -blur 2,5 $img_loc

i3lock -i $img_loc
