#!/bin/bash

# Script to randomly set Background from files in a directory

# Directory Containing Pictures
DIR="/src/lib"

# Command to Select a random jpg file from directory
# Delete the *.jpg to select any file but it may return a folder
PIC=$(ls $DIR/*.jpg | shuf -n1)

# Command to set Background Image
gconftool -t string -s /desktop/gnome/background/picture_filename $PIC
