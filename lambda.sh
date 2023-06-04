#!/usr/bin/env bash
set -e

# tmux #1
wget https://xelibrion-nn-training.s3.amazonaws.com/hifi-codec.zip
unzip hifi-codec.zip

# tmux #2
wget https://repo.anaconda.com/archive/Anaconda3-2023.03-1-Linux-x86_64.sh
bash Anaconda3-2023.03-1-Linux-x86_64.sh -b
source ~/anaconda3/bin/activate
cd hifi-codec
pip install -r requirements.txt
export LD_LIBRARY_PATH=/home/ubuntu/anaconda3/lib
bash start/start.sh
