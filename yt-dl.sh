#! bin/bash
echo "Youtube Downloader"

# Youtube Link
echo 'Insert video Link'
read thelink

# Directory Naming
echo 'Name of your directory'
read thetitle

# Create The Directory
mkdir $thetitle
cd $thetitle

# Get the playlist/song
youtube-dl $thelink -x --audio-format mp3 --audio-quality 9
