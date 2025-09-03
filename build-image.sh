#! /bin/bash

# remove old image
docker rmi ascend-comfyui:latest

# prepare essential files
rm -rf assets/comfyui && mkdir -p assets/comfyui && unzip -d assets/comfyui assets/ComfyUI-master.zip

# build docker image
docker build -t ascend-comfyui .

# init file structure
mkdir -p data

# copy ComfyUI models dir to ./data
if [ ! -d "./data/models" ]; then
    cp -r assets/comfyui/ComfyUI-master/models/ ./data/
fi

# post cleanup
rm -rf assets/comfyui