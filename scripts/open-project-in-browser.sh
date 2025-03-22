#!/bin/bash

# Only run if parent directory is $CODE
if [ "$(basename "$PWD")" != "$PWD" ] && [ "$(dirname "$PWD")" == "$CODE" ]; then
	xdg-open "https://$(basename "$PWD")" </dev/null >/dev/null 2>&1 & disown
else
	echo "You can not open this project"
fi
