#!/bin/bash

# Get the name of the repo
MY_REPO=$(ls -d "/home/onyxia/work"/*/ | head -n 1 | xargs basename)

echo /home/onyxia/work/$MY_REPO

# Install all dependencies in the system folder
Rscript -e "setwd('/home/onyxia/work/$MY_REPO')" -e 'renv::restore()'

# Download data
sh $MY_REPO/download_data.sh