#!/bin/bash
set -e # stop the execution of a script if any of the steps fail

# This bash script expects a single argument which is the size of the png in pixels
if [ -z "$1" ]; then
  echo "No size argument was supplied eg. 64, 128, 256, 512"
  echo "eg ./bin/png-svg 512"
  exit 1
fi

# Map the input argument to a friendly bash variable
PNG_SIZE=$1

# Create the expected directories only if it doesn't exist
mkdir -p "icons/png/${PNG_SIZE}px"

echo "[Start] SVG to PNG: icons/png/${PNG_SIZE}px"
for FILE in icons/svg/*; do 
  SVG_FILENAME=$(basename $FILE) # extract just the filename
  PNG_FILENAME="${SVG_FILENAME/svg/png}" # replace svg with png extension
  PNG_PATH="icons/png/${PNG_SIZE}px/$PNG_FILENAME" # assemble final output path
  #echo $PNG_PATH
  rsvg-convert $FILE -w $PNG_SIZE > $PNG_PATH # convert svg to png
done
echo "[Done] SVG to PNG: icons/png/${PNG_SIZE}px"