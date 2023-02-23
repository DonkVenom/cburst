#!/bin/bash

size=$(du -sh ~/Library/Caches/ | awk '{print $1}') # awk cuts the second term out of the statement so that only the size of the folder is saved into the variable
echo "The size of the folder is ${size} bytes."
cd /Library/Caches/
rm -rf *
cd ~/Library/Caches/
rm -rf *
echo "Cache cleaned!"
