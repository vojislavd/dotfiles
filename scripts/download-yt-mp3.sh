#!/bin/bash

URL="${1%%&*}"
START="$2"
END="$3"

# Get video name
BASENAME="$(yt-dlp --get-filename -o "%(title)s" "$URL")"

# Prepare files
MP3_FILE="$DOWNLOADS/$BASENAME.mp3"
COVER_FILE="$DOWNLOADS/${BASENAME}_cover.jpg"
CUT_FILE="$DOWNLOADS/${BASENAME}_cut.mp3"

# Download mp3
yt-dlp -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata --no-playlist -o "$MP3_FILE" "$URL"

# Save cover image
yt-dlp --skip-download --write-thumbnail --convert-thumbnails jpg -o "$DOWNLOADS/${BASENAME}_cover" "$URL"

# Cut mp3
if [ -z "$END" ]; then
    ffmpeg -i "$MP3_FILE" -ss "$START" -c:a libmp3lame -b:a 320k "$CUT_FILE"
else
    ffmpeg -i "$MP3_FILE" -ss "$START" -to "$END" -c:a libmp3lame -b:a 320k "$CUT_FILE"
fi

# Add cover image to cutted mp3
TMP_FILE="$DOWNLOADS/${BASENAME}_cut_tmp.mp3"
ffmpeg -i "$CUT_FILE" -i "$COVER_FILE" -map 0:a -map 1 -c:a copy -c:v copy -id3v2_version 3 "$TMP_FILE" && mv "$TMP_FILE" "$CUT_FILE"

echo ""
echo "--------------------------------------------"
echo ""
echo "Done!"

