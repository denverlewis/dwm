#!/bin/bash

# pre-install clean up
make clean && sudo rm -rf config.h
# merge patches
git merge config -m "config merge"
git merge statuscmd -m "statuscmd merge"
git merge autostart -m "autostart merge"

# run make and install
make && sudo make clean install
# reset master
git reset --hard origin/master
make clean && sudo rm -rf config.h

echo build successful 
