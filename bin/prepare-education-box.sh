#!/bin/bash

GITHUB_RAW=https://raw.githubusercontent.com/slspeek/linux-beginners-cursus/main

GITHUB_RELEASES=https://github.com/slspeek/linux-beginners-cursus/releases/latest/download
# Run as non-privileged user

cd ~/Downloads
wget $GITHUB_RAW/resources/bloemen.zip 
wget $GITHUB_RELEASES/samenvatting.pdf
wget $GITHUB_RELEASES/verder-leren.pdf

cd ~/Afbeeldingen
unzip ~/Downloads/bloemen.zip

sudo apt-get -y remove chromium
if which google-chrome; then sudo apt-get remove -y google-chrome-stable; fi
if which  discord; then sudo apt-get remove -y discord; fi