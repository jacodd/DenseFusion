#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=0

python ./tools/eval_linemod.py --dataset_root ./datasets/linemod/grelhas\
  --model trained_models/linemod/pose_model_4_0.010967960115522146.pth\
  --refine_model trained_models/linemod/pose_refine_model_344_0.0037182109980759296.pth
