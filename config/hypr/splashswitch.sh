#!/bin/bash
rm ~/.config/hypr/splash.txt
shuf -n 1 ~/.config/hypr/splashes.txt  >> ~/.config/hypr/splash.txt

