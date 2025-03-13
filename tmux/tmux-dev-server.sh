#!/bin/bash

# Start PHP
sudo systemctl start php8.4-fpm

# Start Nginx
sudo systemctl start nginx

# Start MySQL
sudo systemctl start mysql

# Session name
SESSION_NAME="server"

# Kill session if already exists
tmux kill-session -t $SESSION_NAME 2>/dev/null

# Start a new detached tmux session
tmux new-session -d -s $SESSION_NAME

# Wait a bit to finish previous command before running next
sleep 0.1

# Split the window horizontally
tmux split-window -h

# Wait a bit to finish previous command before running next
sleep 0.1

# Run Minio in the first pane
# This requires to change owner of /mnt/data from root to user
tmux send-keys -t $SESSION_NAME:1.1 "MINIO_ROOT_USER="$MINIO_USER" MINIO_ROOT_PASSWORD="$MINIO_PASSWORD" ~/minio server /mnt/data --console-address ":9001"" C-m

# Run Mailpit in the second pane
tmux send-keys -t $SESSION_NAME:1.2 "/usr/local/bin/mailpit" C-m
