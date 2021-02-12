#!/bin/bash

docker run --gpus all -it --rm -v `pwd`:/scratch --user $(id -u):$(id -g) stylegan2ada:latest bash -c \
    "(cd /scratch && DNNLIB_CACHE_DIR=/scratch/.cache python3 generate.py --trunc=1 --seeds=99,261,247,849 \
    --outdir=out --network=https://nvlabs-fi-cdn.nvidia.com/stylegan2-ada/pretrained/metfaces.pkl)"
