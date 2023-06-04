#!/usr/bin/env bash
set -e

ORIG_BATCH_SIZE=16

python3 main3_ddp.py --BATCH_SIZE 16  --N_EPOCHS 300 \
        --save_dir _logs \
        --PATH _checkpoints \
        --train_data_path _data/train \
        --valid_data_path _data/val \
