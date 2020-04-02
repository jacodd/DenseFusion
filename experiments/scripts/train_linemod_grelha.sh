#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=0

python3 ./tools/train.py --dataset linemod\
  --dataset_root ./datasets/linemod/grelhas
#  --resume_posenet pose_model_3_0.011561515148390423.pth\
#  --resume_refinenet pose_refine_model_9_0.008153739427639679.pth
