#!/usr/bin/env bash

# do not use with zsh

sudo rsync -aAXv --delete --dry--run --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude=/home/darius/.npm/* --exclude=/home/darius/.stack/* --exclude=".VirtualBoxVMs" --exclude=/home/darius/.local/share/venv/* --exclude="*.pyc" --exclude=".ecryptfs" / /mnt/backup/

