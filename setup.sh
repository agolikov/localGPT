#!/bin/bash

wget -O SOURCE_DOCUMENTS/Part1.zip https://www.dropbox.com/s/q6ul0fim962k9v2/Challe nge 1-20231215T010637Z-001.zip?dl=1
wget -O SOURCE_DOCUMENTS/Part2.zip https://www.dropbox.com/s/80kf2k6fmuywz0h/Challenge 1-20231215T010637Z-002.zip?dl=1

unzip SOURCE_DOCUMENTS/Part1.zip -d SOURCE_DOCUMENTS/data
unzip SOURCE_DOCUMENTS/Part2.zip -d SOURCE_DOCUMENTS/data
#rm SOURCE_DOCUMENTS/*.zip 

#python3 -m venv .venv
#source .venv/bin/activate    

conda create -n tc_bot_env
conda activate tc_bot_env

pip install -r requirements.txt