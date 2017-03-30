WALLS_PATH=./src
cd $WALLS_PATH

while [ 1 ]; do
    for NEW_WALL in "$WALLS_PATH"/*; do
        gsettings set org.gnome.desktop.background picture-uri "file://${NEW_WALL}"
        sleep 1800
    done
done
