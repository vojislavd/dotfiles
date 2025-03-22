#!/bin/bash

# Check if phpactor already installed
if ! command -v phpactor &> /dev/null; then
    # Check if phpactory directory already exists
    if [ ! -d "$PHPACTOR_PATH" ]; then
        mkdir -p "$PHPACTOR_PATH"
        cd $PHPACTOR_PATH
        git clone https://github.com/phpactor/phpactor.git . &> /dev/null
        composer install &> /dev/null
        cd /usr/local/bin
        sudo ln -s $PHPACTOR_PATH/bin/phpactor phpactor
    fi
fi

if ! command -v phpactor &> /dev/null; then
    echo "Something went wrong, phpactor not installed!"
fi
