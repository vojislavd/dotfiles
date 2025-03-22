#!/bin/bash

if ! command -v intelephense &> /dev/null; then
    sudo npm install -g intelephense > /dev/null 2>&1
fi
