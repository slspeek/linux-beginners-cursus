#!/bin/bash

GITHUB_SLSPEEK=https://raw.githubusercontent.com/slspeek/linux-beginners-cursus/main

# Run as non-privileged user

cd ~/Downloads
wget $GITHUB_SLSPEEK/resources/bloemen.zip 
wget https://github.com/slspeek/linux-beginners-cursus/releases/latest/download/samenvatting.pdf

cd ~/Afbeeldingen
unzip ~/Downloads/bloemen.zip

sudo apt-get -y remove chromium
if which google-chrome; then sudo apt-get remove -y google-chrome-stable; fi
if which  discord; then sudo apt-get remove -y discord; fi